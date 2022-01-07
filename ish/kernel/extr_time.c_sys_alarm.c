
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_3__ {int tv_sec; int tv_nsec; } ;
struct timer_spec {TYPE_1__ value; } ;
struct tgroup {int lock; } ;
struct TYPE_4__ {struct tgroup* group; } ;


 int ITIMER_REAL_ ;
 int STRACE (char*,int) ;
 TYPE_2__* current ;
 int itimer_set (struct tgroup*,int ,struct timer_spec,struct timer_spec*) ;
 int lock (int *) ;
 int timespec_is_zero (TYPE_1__) ;
 int unlock (int *) ;

uint_t sys_alarm(uint_t seconds) {
    STRACE("alarm(%d)", seconds);
    struct timer_spec spec = {
        .value.tv_sec = seconds,
    };
    struct timer_spec old_spec;

    struct tgroup *group = current->group;
    lock(&group->lock);
    int err = itimer_set(group, ITIMER_REAL_, spec, &old_spec);
    unlock(&group->lock);
    if (err < 0)
        return err;


    seconds = old_spec.value.tv_sec;
    if (old_spec.value.tv_nsec >= 500000000)
        seconds++;
    if (seconds == 0 && !timespec_is_zero(old_spec.value))
        seconds = 1;
    return seconds;
}
