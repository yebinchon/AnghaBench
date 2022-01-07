
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;
typedef int off_t_ ;
typedef int dword_t ;
typedef int addr_t ;


 int MAX_PATH ;
 int _EFAULT ;
 int generic_setattrat (int *,char*,int ,int) ;
 int make_attr (int,int) ;
 scalar_t__ user_read_string (int ,char*,int) ;

dword_t sys_truncate64(addr_t path_addr, dword_t size_low, dword_t size_high) {
    off_t_ size = ((off_t_) size_high << 32) | size_low;
    char path[MAX_PATH];
    if (user_read_string(path_addr, path, sizeof(path)))
        return _EFAULT;
    return generic_setattrat(((void*)0), path, make_attr(size, size), 1);
}
