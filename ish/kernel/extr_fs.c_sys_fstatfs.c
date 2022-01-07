
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fd_t ;
typedef int dword_t ;
typedef int addr_t ;
struct TYPE_2__ {int mount; } ;


 TYPE_1__* f_get (int ) ;
 int statfs_mount (int ,int ) ;

dword_t sys_fstatfs(fd_t f, addr_t buf_addr) {
    return statfs_mount(f_get(f)->mount, buf_addr);
}
