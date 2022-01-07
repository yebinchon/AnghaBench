
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;
typedef int mode_t_ ;
typedef int dword_t ;
typedef int dev_t_ ;
typedef int addr_t ;


 int MAX_PATH ;
 int STRACE (char*,char*,int ,int ) ;
 int _EFAULT ;
 int apply_umask (int *) ;
 int generic_mknod (char*,int ,int ) ;
 scalar_t__ user_read_string (int ,char*,int) ;

dword_t sys_mknod(addr_t path_addr, mode_t_ mode, dev_t_ dev) {
    char path[MAX_PATH];
    if (user_read_string(path_addr, path, sizeof(path)))
        return _EFAULT;
    STRACE("mknod(\"%s\", %#x, %#x)", path, mode, dev);
    apply_umask(&mode);
    return generic_mknod(path, mode, dev);
}
