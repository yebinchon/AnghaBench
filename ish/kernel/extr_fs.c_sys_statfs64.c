
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs64_ {int dummy; } ;
struct mount {int dummy; } ;
typedef int path_raw ;
typedef int dword_t ;
typedef int addr_t ;


 int AT_PWD ;
 int MAX_PATH ;
 int N_SYMLINK_NOFOLLOW ;
 int STRACE (char*,char*,int,int ) ;
 int _EFAULT ;
 int _EINVAL ;
 struct mount* mount_find (char*) ;
 int mount_release (struct mount*) ;
 int path_normalize (int ,char*,char*,int ) ;
 int statfs64_mount (struct mount*,int ) ;
 scalar_t__ user_read_string (int ,char*,int) ;

dword_t sys_statfs64(addr_t path_addr, dword_t buf_size, addr_t buf_addr) {
    char path_raw[MAX_PATH];
    if (user_read_string(path_addr, path_raw, sizeof(path_raw)))
        return _EFAULT;
    STRACE("statfs64(\"%s\", %d, %#x)", path_raw, buf_size, buf_addr);
    if (buf_size != sizeof(struct statfs64_))
        return _EINVAL;
    char path[MAX_PATH];
    int err = path_normalize(AT_PWD, path_raw, path, N_SYMLINK_NOFOLLOW);
    if (err < 0)
        return err;
    struct mount *mount = mount_find(path);
    err = statfs64_mount(mount, buf_addr);
    mount_release(mount);
    return err;
}
