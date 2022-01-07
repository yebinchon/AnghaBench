
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fd {int dummy; } ;
typedef int dword_t ;
typedef int addr_t ;
struct TYPE_4__ {TYPE_1__* fs; } ;
struct TYPE_3__ {int lock; struct fd* pwd; } ;


 int MAX_PATH ;
 int STRACE (char*,int,...) ;
 int _EFAULT ;
 int _ENOMEM ;
 int _ERANGE ;
 TYPE_2__* current ;
 int free (char*) ;
 int generic_getpath (struct fd*,char*) ;
 int lock (int *) ;
 char* malloc (int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int unlock (int *) ;
 scalar_t__ user_write (int ,char*,int) ;

dword_t sys_getcwd(addr_t buf_addr, dword_t size) {
    STRACE("getcwd(%#x, %#x)", buf_addr, size);
    lock(&current->fs->lock);
    struct fd *wd = current->fs->pwd;
    char pwd[MAX_PATH + 1];
    int err = generic_getpath(wd, pwd);
    unlock(&current->fs->lock);
    if (err < 0)
        return err;

    if (strlen(pwd) + 1 > size)
        return _ERANGE;
    size = strlen(pwd) + 1;
    char *buf = malloc(size);
    if (buf == ((void*)0))
        return _ENOMEM;
    strcpy(buf, pwd);
    STRACE(" \"%.*s\"", size, buf);
    dword_t res = size;
    if (user_write(buf_addr, buf, size))
        res = _EFAULT;
    free(buf);
    return res;
}
