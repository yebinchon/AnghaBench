
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext_code {int code; } ;


 int IRQEXT_EMS ;
 int IRQEXT_EXC ;
 int inc_irq_stat (int ) ;
 int smp_handle_ext_call () ;

__attribute__((used)) static void do_ext_call_interrupt(struct ext_code ext_code,
      unsigned int param32, unsigned long param64)
{
 inc_irq_stat(ext_code.code == 0x1202 ? IRQEXT_EXC : IRQEXT_EMS);
 smp_handle_ext_call();
}
