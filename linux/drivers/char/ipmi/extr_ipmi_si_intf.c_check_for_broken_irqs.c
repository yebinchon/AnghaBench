
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int dummy; } ;


 int check_clr_rcv_irq (struct smi_info*) ;
 int check_set_rcv_irq (struct smi_info*) ;

__attribute__((used)) static void check_for_broken_irqs(struct smi_info *smi_info)
{
 check_clr_rcv_irq(smi_info);
 check_set_rcv_irq(smi_info);
}
