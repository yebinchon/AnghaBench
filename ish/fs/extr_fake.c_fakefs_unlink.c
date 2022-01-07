
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mount {int dummy; } ;
struct TYPE_2__ {int (* unlink ) (struct mount*,char const*) ;} ;


 int db_begin (struct mount*) ;
 int db_commit (struct mount*) ;
 int db_rollback (struct mount*) ;
 int path_unlink (struct mount*,char const*) ;
 TYPE_1__ realfs ;
 int stub1 (struct mount*,char const*) ;

__attribute__((used)) static int fakefs_unlink(struct mount *mount, const char *path) {
    db_begin(mount);
    int err = realfs.unlink(mount, path);
    if (err < 0) {
        db_rollback(mount);
        return err;
    }
    path_unlink(mount, path);
    db_commit(mount);
    return 0;
}
