
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ghes_proc_in_irq ;
 int ghes_proc_irq_work ;
 int init_irq_work (int *,int ) ;

__attribute__((used)) static void ghes_nmi_init_cxt(void)
{
 init_irq_work(&ghes_proc_irq_work, ghes_proc_in_irq);
}
