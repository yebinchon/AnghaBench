
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uid_t_ ;
typedef int int_t ;
struct TYPE_2__ {scalar_t__ uid; scalar_t__ suid; scalar_t__ euid; } ;


 int STRACE (char*,scalar_t__) ;
 int _EPERM ;
 TYPE_1__* current ;
 scalar_t__ superuser () ;

int_t sys_setuid(uid_t_ uid) {
    STRACE("setuid(%d)", uid);
    if (superuser()) {
        current->uid = current->suid = uid;
    } else {
        if (uid != current->uid && uid != current->suid)
            return _EPERM;
    }
    current->euid = uid;
    return 0;
}
