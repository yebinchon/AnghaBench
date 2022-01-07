
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_t ;
typedef int dword_t ;


 int STRACE (char*,int ) ;
 int f_close (int ) ;

dword_t sys_close(fd_t f) {
    STRACE("close(%d)", f);
    return f_close(f);
}
