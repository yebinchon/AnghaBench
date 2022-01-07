
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_ops {int dummy; } ;


 int MAX_PATH ;
 int do_mount (struct fs_ops const*,char*,char*,int ) ;
 int errno_map () ;
 int * realpath (char const*,char*) ;

int mount_root(const struct fs_ops *fs, const char *source) {
    char source_realpath[MAX_PATH + 1];
    if (realpath(source, source_realpath) == ((void*)0))
        return errno_map();
    int err = do_mount(fs, source_realpath, "", 0);
    if (err < 0)
        return err;
    return 0;
}
