
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_EILVT_NR_MAX ;
 scalar_t__ get_eilvt (int) ;
 int ibs_eilvt_valid () ;
 int pr_debug (char*) ;
 int pr_info (char*,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int put_eilvt (int) ;
 int setup_ibs_ctl (int) ;

__attribute__((used)) static void force_ibs_eilvt_setup(void)
{
 int offset;
 int ret;

 preempt_disable();

 for (offset = 1; offset < APIC_EILVT_NR_MAX; offset++) {
  if (get_eilvt(offset))
   break;
 }
 preempt_enable();

 if (offset == APIC_EILVT_NR_MAX) {
  pr_debug("No EILVT entry available\n");
  return;
 }

 ret = setup_ibs_ctl(offset);
 if (ret)
  goto out;

 if (!ibs_eilvt_valid())
  goto out;

 pr_info("LVT offset %d assigned\n", offset);

 return;
out:
 preempt_disable();
 put_eilvt(offset);
 preempt_enable();
 return;
}
