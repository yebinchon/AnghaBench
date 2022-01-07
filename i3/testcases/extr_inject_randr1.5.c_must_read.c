
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int err (int ,char*) ;
 int errx (int ,char*) ;

__attribute__((used)) static void must_read(int n) {
    if (n == -1) {
        err(EXIT_FAILURE, "read()");
    }
    if (n == 0) {
        errx(EXIT_FAILURE, "EOF");
    }
}
