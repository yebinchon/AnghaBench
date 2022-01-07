
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {int dummy; } ;
typedef int path ;
typedef int dword_t ;
typedef int addr_t ;
struct TYPE_2__ {int fs; } ;


 scalar_t__ IS_ERR (struct fd*) ;
 int MAX_PATH ;
 int PTR_ERR (struct fd*) ;
 int STRACE (char*,char*) ;
 int _EFAULT ;
 TYPE_1__* current ;
 int fs_chdir (int ,struct fd*) ;
 struct fd* open_dir (char*) ;
 scalar_t__ user_read_string (int ,char*,int) ;

dword_t sys_chdir(addr_t path_addr) {
    char path[MAX_PATH];
    if (user_read_string(path_addr, path, sizeof(path)))
        return _EFAULT;
    STRACE("chdir(\"%s\")", path);

    struct fd *dir = open_dir(path);
    if (IS_ERR(dir))
        return PTR_ERR(dir);
    fs_chdir(current->fs, dir);
    return 0;
}
