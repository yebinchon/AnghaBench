
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfsbuf {int flags; int frsize; int namelen; int fsid; int ffree; int files; int bavail; int bfree; int blocks; int bsize; int type; } ;
struct statfs64_ {int flags; int frsize; int namelen; int fsid; int ffree; int files; int bavail; int bfree; int blocks; int bsize; int type; } ;
struct mount {int dummy; } ;
typedef int int_t ;
typedef int addr_t ;


 int _EFAULT ;
 int mount_statfs (struct mount*,struct statfsbuf*) ;
 scalar_t__ user_put (int ,struct statfs64_) ;

__attribute__((used)) static int_t statfs64_mount(struct mount *mount, addr_t buf_addr) {
    struct statfsbuf buf = {};
    int err = mount_statfs(mount, &buf);
    if (err < 0)
        return err;
    struct statfs64_ out_buf = {
        .type = buf.type,
        .bsize = buf.bsize,
        .blocks = buf.blocks,
        .bfree = buf.bfree,
        .bavail = buf.bavail,
        .files = buf.files,
        .ffree = buf.ffree,
        .fsid = buf.fsid,
        .namelen = buf.namelen,
        .frsize = buf.frsize,
        .flags = buf.flags,
    };
    if (user_put(buf_addr, out_buf))
        return _EFAULT;
    return 0;
}
