
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pid; } ;


 int BINDER_DEBUG_PRIORITY_CAP ;
 long MAX_NICE ;
 int RLIMIT_NICE ;
 int binder_debug (int ,char*,int ,long,long) ;
 int binder_user_error (char*,int ) ;
 scalar_t__ can_nice (TYPE_1__*,long) ;
 TYPE_1__* current ;
 int rlimit (int ) ;
 long rlimit_to_nice (int ) ;
 int set_user_nice (TYPE_1__*,long) ;

__attribute__((used)) static void binder_set_nice(long nice)
{
 long min_nice;

 if (can_nice(current, nice)) {
  set_user_nice(current, nice);
  return;
 }
 min_nice = rlimit_to_nice(rlimit(RLIMIT_NICE));
 binder_debug(BINDER_DEBUG_PRIORITY_CAP,
       "%d: nice value %ld not allowed use %ld instead\n",
        current->pid, nice, min_nice);
 set_user_nice(current, min_nice);
 if (min_nice <= MAX_NICE)
  return;
 binder_user_error("%d RLIMIT_NICE not set\n", current->pid);
}
