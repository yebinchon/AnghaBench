
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int s3c_irq_demux_eint (int ,int) ;

__attribute__((used)) static void s3c_irq_demux_eint0_3(struct irq_desc *desc)
{
 s3c_irq_demux_eint(0, 3);
}
