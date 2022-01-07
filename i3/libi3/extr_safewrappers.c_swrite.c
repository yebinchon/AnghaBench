
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int EXIT_FAILURE ;
 int err (int ,char*,int) ;
 int writeall (int,void const*,size_t) ;

ssize_t swrite(int fd, const void *buf, size_t count) {
    ssize_t n;

    n = writeall(fd, buf, count);
    if (n == -1)
        err(EXIT_FAILURE, "Failed to write %d", fd);
    else
        return n;
}
