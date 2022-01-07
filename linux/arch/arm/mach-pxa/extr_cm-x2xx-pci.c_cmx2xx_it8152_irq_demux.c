
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* chip; } ;
struct irq_desc {TYPE_2__ irq_data; } ;
struct TYPE_3__ {int (* irq_ack ) (TYPE_2__*) ;} ;


 int it8152_irq_demux (struct irq_desc*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void cmx2xx_it8152_irq_demux(struct irq_desc *desc)
{

 desc->irq_data.chip->irq_ack(&desc->irq_data);

 it8152_irq_demux(desc);
}
