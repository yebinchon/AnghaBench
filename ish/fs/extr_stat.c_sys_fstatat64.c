
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_t ;
typedef int dword_t ;
typedef int addr_t ;


 int AT_SYMLINK_NOFOLLOW_ ;
 int sys_stat_path (int ,int ,int ,int) ;

dword_t sys_fstatat64(fd_t at, addr_t path_addr, addr_t statbuf_addr, dword_t flags) {
    return sys_stat_path(at, path_addr, statbuf_addr, !(flags & AT_SYMLINK_NOFOLLOW_));
}
