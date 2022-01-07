
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mount {int dummy; } ;
struct TYPE_2__ {int (* link ) (struct mount*,char const*,char const*) ;} ;


 int db_begin (struct mount*) ;
 int db_commit (struct mount*) ;
 int db_rollback (struct mount*) ;
 int path_link (struct mount*,char const*,char const*) ;
 TYPE_1__ realfs ;
 int stub1 (struct mount*,char const*,char const*) ;

__attribute__((used)) static int fakefs_link(struct mount *mount, const char *src, const char *dst) {
    db_begin(mount);
    int err = realfs.link(mount, src, dst);
    if (err < 0) {
        db_rollback(mount);
        return err;
    }
    path_link(mount, src, dst);
    db_commit(mount);
    return 0;
}
