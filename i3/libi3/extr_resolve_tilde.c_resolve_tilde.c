
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int gl_pathc; char** gl_pathv; } ;
typedef TYPE_1__ glob_t ;


 int EXIT_FAILURE ;
 int GLOB_NOMATCH ;
 int GLOB_TILDE ;
 int err (int ,char*) ;
 int free (char*) ;
 int glob (char*,int ,int *,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 char* scalloc (size_t,int) ;
 char* sstrdup (char const*) ;
 char* sstrndup (char const*,size_t) ;
 int strcat (char*,char*) ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char*) ;
 size_t strlen (char const*) ;

char *resolve_tilde(const char *path) {
    static glob_t globbuf;
    char *head, *tail, *result;

    tail = strchr(path, '/');
    head = sstrndup(path, tail ? (size_t)(tail - path) : strlen(path));

    int res = glob(head, GLOB_TILDE, ((void*)0), &globbuf);
    free(head);

    if (res == GLOB_NOMATCH || globbuf.gl_pathc != 1)
        result = sstrdup(path);
    else if (res != 0) {
        err(EXIT_FAILURE, "glob() failed");
    } else {
        head = globbuf.gl_pathv[0];
        result = scalloc(strlen(head) + (tail ? strlen(tail) : 0) + 1, 1);
        strcpy(result, head);
        if (tail) {
            strcat(result, tail);
        }
    }
    globfree(&globbuf);

    return result;
}
