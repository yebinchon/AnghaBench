
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit_ {scalar_t__ max; } ;


 int _EPERM ;
 int current ;
 int rlimit_get (int ,int,struct rlimit_*) ;
 scalar_t__ superuser () ;

__attribute__((used)) static int check_setrlimit(int resource, struct rlimit_ new_limit) {
    if (superuser())
        return 0;
    struct rlimit_ old_limit;
    int err = rlimit_get(current, resource, &old_limit);
    if (err < 0)
        return err;
    if (new_limit.max > old_limit.max)
        return _EPERM;
    return 0;
}
