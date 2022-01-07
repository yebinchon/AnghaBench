
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int int_t ;
typedef int fd_t ;
typedef int addr_t ;


 int fill_dirent_32 ;
 int sys_getdents_common (int ,int ,int ,int ) ;

int_t sys_getdents(fd_t f, addr_t dirents, uint_t count) {
    return sys_getdents_common(f, dirents, count, fill_dirent_32);
}
