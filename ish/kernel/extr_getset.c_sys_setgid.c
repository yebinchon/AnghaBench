
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uid_t_ ;
typedef int int_t ;
struct TYPE_2__ {scalar_t__ gid; scalar_t__ sgid; scalar_t__ egid; } ;


 int STRACE (char*,scalar_t__) ;
 int _EPERM ;
 TYPE_1__* current ;
 scalar_t__ superuser () ;

int_t sys_setgid(uid_t_ gid) {
    STRACE("setgid(%d)", gid);
    if (superuser()) {
        current->gid = current->sgid = gid;
    } else {
        if (gid != current->gid && gid != current->sgid)
            return _EPERM;
    }
    current->egid = gid;
    return 0;
}
