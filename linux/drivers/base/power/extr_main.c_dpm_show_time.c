
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int event; } ;
typedef TYPE_1__ pm_message_t ;
typedef int ktime_t ;


 int NSEC_PER_USEC ;
 int USEC_PER_MSEC ;
 int do_div (int,int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ns (int ) ;
 int pm_pr_dbg (char*,char*,char*,int ,char*,int,int) ;
 int pm_verb (int ) ;

__attribute__((used)) static void dpm_show_time(ktime_t starttime, pm_message_t state, int error,
     const char *info)
{
 ktime_t calltime;
 u64 usecs64;
 int usecs;

 calltime = ktime_get();
 usecs64 = ktime_to_ns(ktime_sub(calltime, starttime));
 do_div(usecs64, NSEC_PER_USEC);
 usecs = usecs64;
 if (usecs == 0)
  usecs = 1;

 pm_pr_dbg("%s%s%s of devices %s after %ld.%03ld msecs\n",
    info ?: "", info ? " " : "", pm_verb(state.event),
    error ? "aborted" : "complete",
    usecs / USEC_PER_MSEC, usecs % USEC_PER_MSEC);
}
