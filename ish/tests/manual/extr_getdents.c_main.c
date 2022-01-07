
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int O_DIRECTORY ;
 int O_RDONLY ;
 int STDOUT_FILENO ;
 int SYS_getdents64 ;
 int open (char*,int) ;
 int syscall (int ,int,char*,int) ;
 int write (int ,char*,int) ;

int main() {
    int fd = open(".", O_RDONLY | O_DIRECTORY);
    char buf[100];
    int count = syscall(SYS_getdents64, fd, buf, sizeof(buf));
    write(STDOUT_FILENO, buf, count);
}
