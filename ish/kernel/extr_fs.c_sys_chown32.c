
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t_ ;
typedef int dword_t ;
typedef int addr_t ;


 int AT_FDCWD_ ;
 int sys_fchownat (int ,int ,int ,int ,int ) ;

dword_t sys_chown32(addr_t path_addr, uid_t_ owner, uid_t_ group) {
    return sys_fchownat(AT_FDCWD_, path_addr, owner, group, 0);
}
