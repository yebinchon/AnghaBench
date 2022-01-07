
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct injected_reply {int len; int buf; } ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int err (int ,char*,char const*) ;
 int fclose (int *) ;
 int fileno (int *) ;
 int * fopen (char const*,char*) ;
 int fread (int ,int,int,int *) ;
 scalar_t__ fstat (int ,struct stat*) ;
 int smalloc (int) ;

__attribute__((used)) static void must_read_reply(const char *filename, struct injected_reply *reply) {
    FILE *f;
    if ((f = fopen(filename, "r")) == ((void*)0)) {
        err(EXIT_FAILURE, "fopen(%s)", filename);
    }
    struct stat stbuf;
    if (fstat(fileno(f), &stbuf) != 0) {
        err(EXIT_FAILURE, "fstat(%s)", filename);
    }
    reply->len = stbuf.st_size;
    reply->buf = smalloc(stbuf.st_size);
    int n = fread(reply->buf, 1, stbuf.st_size, f);
    if (n != stbuf.st_size) {
        err(EXIT_FAILURE, "fread(%s)", filename);
    }
    fclose(f);
}
