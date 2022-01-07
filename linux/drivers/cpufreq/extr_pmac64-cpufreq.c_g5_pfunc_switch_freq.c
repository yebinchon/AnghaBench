
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pmf_args {int count; TYPE_1__* u; } ;
struct TYPE_4__ {unsigned long frequency; } ;
struct TYPE_3__ {scalar_t__* p; } ;


 int CPUFREQ_HIGH ;
 int DBG (char*,int) ;
 int HZ ;
 TYPE_2__* g5_cpu_freqs ;
 int g5_pmode_cur ;
 int g5_switch_volt (int) ;
 int jiffies ;
 int pfunc_cpu_setfreq_high ;
 int pfunc_cpu_setfreq_low ;
 int pfunc_slewing_done ;
 int pmf_call_one (int ,struct pmf_args*) ;
 unsigned long ppc_proc_freq ;
 int pr_warn (char*,...) ;
 int time_after (int,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int g5_pfunc_switch_freq(int speed_mode)
{
 struct pmf_args args;
 u32 done = 0;
 unsigned long timeout;
 int rc;

 DBG("g5_pfunc_switch_freq(%d)\n", speed_mode);


 if (speed_mode < g5_pmode_cur)
  g5_switch_volt(speed_mode);


 if (speed_mode == CPUFREQ_HIGH)
  rc = pmf_call_one(pfunc_cpu_setfreq_high, ((void*)0));
 else
  rc = pmf_call_one(pfunc_cpu_setfreq_low, ((void*)0));

 if (rc)
  pr_warn("pfunc switch error %d\n", rc);





 timeout = jiffies + HZ/10;
 while(!time_after(jiffies, timeout)) {
  args.count = 1;
  args.u[0].p = &done;
  pmf_call_one(pfunc_slewing_done, &args);
  if (done)
   break;
  usleep_range(500, 500);
 }
 if (done == 0)
  pr_warn("Timeout in clock slewing !\n");


 if (speed_mode > g5_pmode_cur)
  g5_switch_volt(speed_mode);

 g5_pmode_cur = speed_mode;
 ppc_proc_freq = g5_cpu_freqs[speed_mode].frequency * 1000ul;

 return 0;
}
