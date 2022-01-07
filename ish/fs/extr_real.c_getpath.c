
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int F_GETPATH ;
 scalar_t__ MAX_PATH ;
 int fcntl (int,int ,char*) ;
 size_t readlink (char*,char*,scalar_t__) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int getpath(int fd, char *buf) {

    char proc_fd[20];
    sprintf(proc_fd, "/proc/self/fd/%d", fd);
    ssize_t size = readlink(proc_fd, buf, MAX_PATH - 1);
    if (size >= 0)
        buf[size] = '\0';
    return size;



}
