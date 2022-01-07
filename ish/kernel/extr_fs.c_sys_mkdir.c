
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t_ ;
typedef int dword_t ;
typedef int addr_t ;


 int AT_FDCWD_ ;
 int sys_mkdirat (int ,int ,int ) ;

dword_t sys_mkdir(addr_t path_addr, mode_t_ mode) {
    return sys_mkdirat(AT_FDCWD_, path_addr, mode);
}
