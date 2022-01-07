
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CFID; } ;
union msr_fidvidstatus {TYPE_1__ bits; int val; } ;
typedef int u8 ;
struct cpufreq_policy {int dummy; } ;
struct cpufreq_freqs {int old; int new; } ;
struct TYPE_4__ {int driver_data; int frequency; } ;


 int MSR_K7_FID_VID_STATUS ;
 int change_FID (int) ;
 int change_VID (int) ;
 int* fid_codes ;
 int fsb ;
 int have_a0 ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 TYPE_2__* powernow_table ;
 int rdmsrl (int ,int ) ;

__attribute__((used)) static int powernow_target(struct cpufreq_policy *policy, unsigned int index)
{
 u8 fid, vid;
 struct cpufreq_freqs freqs;
 union msr_fidvidstatus fidvidstatus;
 int cfid;






 fid = powernow_table[index].driver_data & 0xFF;
 vid = (powernow_table[index].driver_data & 0xFF00) >> 8;

 rdmsrl(MSR_K7_FID_VID_STATUS, fidvidstatus.val);
 cfid = fidvidstatus.bits.CFID;
 freqs.old = fsb * fid_codes[cfid] / 10;

 freqs.new = powernow_table[index].frequency;



 if (have_a0 == 1)
  local_irq_disable();

 if (freqs.old > freqs.new) {

  change_FID(fid);
  change_VID(vid);
 } else {

  change_VID(vid);
  change_FID(fid);
 }


 if (have_a0 == 1)
  local_irq_enable();

 return 0;
}
