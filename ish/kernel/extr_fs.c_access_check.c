
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct statbuf {scalar_t__ uid; scalar_t__ gid; int mode; } ;
struct TYPE_2__ {scalar_t__ euid; scalar_t__ egid; } ;


 int _EACCES ;
 TYPE_1__* current ;
 scalar_t__ superuser () ;

int access_check(struct statbuf *stat, int check) {
    if (superuser()) return 0;
    if (check == 0) return 0;

    if (current->euid == stat->uid) {
        check <<= 6;
    } else if (current->egid == stat->gid) {
        check <<= 3;
    }
    if (!(stat->mode & check))
        return _EACCES;
    return 0;
}
