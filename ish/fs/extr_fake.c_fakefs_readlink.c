
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mount {int dummy; } ;
struct ish_stat {int mode; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {scalar_t__ (* readlink ) (struct mount*,char const*,char*,size_t) ;} ;


 int S_ISLNK (int ) ;
 scalar_t__ _EINVAL ;
 scalar_t__ _ENOENT ;
 int db_begin (struct mount*) ;
 int db_commit (struct mount*) ;
 int db_rollback (struct mount*) ;
 scalar_t__ file_readlink (struct mount*,char const*,char*,size_t) ;
 int path_read_stat (struct mount*,char const*,struct ish_stat*,int *) ;
 TYPE_1__ realfs ;
 scalar_t__ stub1 (struct mount*,char const*,char*,size_t) ;

__attribute__((used)) static ssize_t fakefs_readlink(struct mount *mount, const char *path, char *buf, size_t bufsize) {
    db_begin(mount);
    struct ish_stat ishstat;
    if (!path_read_stat(mount, path, &ishstat, ((void*)0))) {
        db_rollback(mount);
        return _ENOENT;
    }
    if (!S_ISLNK(ishstat.mode)) {
        db_rollback(mount);
        return _EINVAL;
    }

    ssize_t err = realfs.readlink(mount, path, buf, bufsize);
    if (err == _EINVAL)
        err = file_readlink(mount, path, buf, bufsize);
    db_commit(mount);
    return err;
}
