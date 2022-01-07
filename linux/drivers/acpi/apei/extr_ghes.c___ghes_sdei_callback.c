
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ghes {int dummy; } ;
typedef enum fixed_addresses { ____Placeholder_fixed_addresses } fixed_addresses ;


 int ENOENT ;
 int ghes_in_nmi_queue_one_entry (struct ghes*,int) ;
 int ghes_proc_irq_work ;
 int irq_work_queue (int *) ;

__attribute__((used)) static int __ghes_sdei_callback(struct ghes *ghes,
    enum fixed_addresses fixmap_idx)
{
 if (!ghes_in_nmi_queue_one_entry(ghes, fixmap_idx)) {
  irq_work_queue(&ghes_proc_irq_work);

  return 0;
 }

 return -ENOENT;
}
