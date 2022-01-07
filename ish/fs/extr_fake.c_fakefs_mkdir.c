
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mount {int dummy; } ;
struct ish_stat {int mode; scalar_t__ rdev; int gid; int uid; } ;
typedef int mode_t_ ;
struct TYPE_4__ {int egid; int euid; } ;
struct TYPE_3__ {int (* mkdir ) (struct mount*,char const*,int) ;} ;


 int S_IFDIR ;
 TYPE_2__* current ;
 int db_begin (struct mount*) ;
 int db_commit (struct mount*) ;
 int db_rollback (struct mount*) ;
 int path_create (struct mount*,char const*,struct ish_stat*) ;
 TYPE_1__ realfs ;
 int stub1 (struct mount*,char const*,int) ;

__attribute__((used)) static int fakefs_mkdir(struct mount *mount, const char *path, mode_t_ mode) {
    db_begin(mount);
    int err = realfs.mkdir(mount, path, 0777);
    if (err < 0) {
        db_rollback(mount);
        return err;
    }
    struct ish_stat ishstat;
    ishstat.mode = mode | S_IFDIR;
    ishstat.uid = current->euid;
    ishstat.gid = current->egid;
    ishstat.rdev = 0;
    path_create(mount, path, &ishstat);
    db_commit(mount);
    return 0;
}
