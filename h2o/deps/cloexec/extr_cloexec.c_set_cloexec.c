
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int fcntl (int,int ,int ) ;

__attribute__((used)) static int set_cloexec(int fd)
{
    return fcntl(fd, F_SETFD, FD_CLOEXEC) != -1 ? 0 : -1;
}
