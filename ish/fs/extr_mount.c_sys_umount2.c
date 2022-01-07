
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int target_raw ;
typedef int dword_t ;
typedef int addr_t ;


 int AT_PWD ;
 int MAX_PATH ;
 int N_SYMLINK_FOLLOW ;
 int N_SYMLINK_NOFOLLOW ;
 int UMOUNT_NOFOLLOW_ ;
 int _EFAULT ;
 int do_umount (char*) ;
 int lock (int *) ;
 int mounts_lock ;
 int path_normalize (int ,char*,char*,int ) ;
 int unlock (int *) ;
 scalar_t__ user_read_string (int ,char*,int) ;

dword_t sys_umount2(addr_t target_addr, dword_t flags) {
    char target_raw[MAX_PATH];
    if (user_read_string(target_addr, target_raw, sizeof(target_raw)))
        return _EFAULT;
    char target[MAX_PATH];
    int err = path_normalize(AT_PWD, target_raw, target,
            flags & UMOUNT_NOFOLLOW_ ? N_SYMLINK_NOFOLLOW : N_SYMLINK_FOLLOW);
    if (err < 0)
        return err;

    lock(&mounts_lock);
    err = do_umount(target);
    unlock(&mounts_lock);
    return err;
}
