
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_handler_data {int dev_ino; int dev_handle; } ;
struct ino_bucket {int dummy; } ;


 int BUG_ON (int) ;
 int __pa (struct ino_bucket*) ;
 int bucket_set_irq (int ,unsigned int) ;
 struct irq_handler_data* irq_get_handler_data (unsigned int) ;
 struct ino_bucket* ivector_table ;
 unsigned long nr_ivec ;
 unsigned long sun4v_devino_to_sysino (int ,int ) ;

__attribute__((used)) static void sysino_set_bucket(unsigned int irq)
{
 struct irq_handler_data *ihd = irq_get_handler_data(irq);
 struct ino_bucket *bucket;
 unsigned long sysino;

 sysino = sun4v_devino_to_sysino(ihd->dev_handle, ihd->dev_ino);
 BUG_ON(sysino >= nr_ivec);
 bucket = &ivector_table[sysino];
 bucket_set_irq(__pa(bucket), irq);
}
