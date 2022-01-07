
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_EILVT_MSG_NMI ;
 int get_ibs_lvt_offset () ;
 int pr_warn (char*,int ) ;
 int setup_APIC_eilvt (int,int ,int ,int ) ;
 int smp_processor_id () ;

__attribute__((used)) static void setup_APIC_ibs(void)
{
 int offset;

 offset = get_ibs_lvt_offset();
 if (offset < 0)
  goto failed;

 if (!setup_APIC_eilvt(offset, 0, APIC_EILVT_MSG_NMI, 0))
  return;
failed:
 pr_warn("perf: IBS APIC setup failed on cpu #%d\n",
  smp_processor_id());
}
