
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;
typedef int dword_t ;
typedef int addr_t ;


 int AT_PWD ;
 int MAX_PATH ;
 int STRACE (char*,char*) ;
 int _EFAULT ;
 int generic_rmdirat (int ,char*) ;
 scalar_t__ user_read_string (int ,char*,int) ;

dword_t sys_rmdir(addr_t path_addr) {
    char path[MAX_PATH];
    if (user_read_string(path_addr, path, sizeof(path)))
        return _EFAULT;
    STRACE("rmdir(%s)", path);
    return generic_rmdirat(AT_PWD, path);
}
