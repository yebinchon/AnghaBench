
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_getpid ;
 int syscall (int ) ;

int os_getpid(void)
{
 return syscall(__NR_getpid);
}
