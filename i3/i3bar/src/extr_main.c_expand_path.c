
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ gl_pathc; char** gl_pathv; } ;
typedef TYPE_1__ glob_t ;


 int ELOG (char*) ;
 int EXIT_FAILURE ;
 int GLOB_NOCHECK ;
 int GLOB_TILDE ;
 int exit (int ) ;
 scalar_t__ glob (char*,int,int *,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 char* sstrdup (char*) ;

__attribute__((used)) static char *expand_path(char *path) {
    static glob_t globbuf;
    if (glob(path, GLOB_NOCHECK | GLOB_TILDE, ((void*)0), &globbuf) < 0) {
        ELOG("glob() failed\n");
        exit(EXIT_FAILURE);
    }
    char *result = sstrdup(globbuf.gl_pathc > 0 ? globbuf.gl_pathv[0] : path);
    globfree(&globbuf);
    return result;
}
