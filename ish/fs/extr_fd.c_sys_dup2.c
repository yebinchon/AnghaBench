
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_t ;
typedef int dword_t ;


 int sys_dup3 (int ,int ,int ) ;

dword_t sys_dup2(fd_t f, fd_t new_f) {
    return sys_dup3(f, new_f, 0);
}
