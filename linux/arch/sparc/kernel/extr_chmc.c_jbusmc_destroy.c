
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int * resource; } ;
struct jbusmc {int regs; int list; } ;


 int JBUSMC_REGS_SIZE ;
 int kfree (struct jbusmc*) ;
 int mc_list_del (int *) ;
 int of_iounmap (int *,int ,int ) ;

__attribute__((used)) static void jbusmc_destroy(struct platform_device *op, struct jbusmc *p)
{
 mc_list_del(&p->list);
 of_iounmap(&op->resource[0], p->regs, JBUSMC_REGS_SIZE);
 kfree(p);
}
