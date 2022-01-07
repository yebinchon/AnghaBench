
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int gef_pic_mask (struct irq_data*) ;

__attribute__((used)) static void gef_pic_mask_ack(struct irq_data *d)
{



 gef_pic_mask(d);
}
