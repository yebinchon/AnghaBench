
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addr_t ;


 int SEEK_SET ;
 int close (int) ;
 int lseek (int,int ,int ) ;
 int open_mem (int) ;
 int trycall (int ,char*) ;
 int write (int,void*,size_t) ;

void pt_writen(int pid, addr_t addr, void *buf, size_t count) {
    int fd = open_mem(pid);
    trycall(lseek(fd, addr, SEEK_SET), "write seek");
    trycall(write(fd, buf, count), "write write");
    close(fd);
}
