
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stp_irq_parm {int dummy; } ;
struct ext_code {int dummy; } ;


 int IRQEXT_TLA ;
 int inc_irq_stat (int ) ;
 int stp_timing_alert (struct stp_irq_parm*) ;

__attribute__((used)) static void timing_alert_interrupt(struct ext_code ext_code,
       unsigned int param32, unsigned long param64)
{
 inc_irq_stat(IRQEXT_TLA);
 if (param32 & 0x00038000)
  stp_timing_alert((struct stp_irq_parm *) &param32);
}
