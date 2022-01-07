
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int * resource; } ;
struct chmc {int regs; int list; } ;


 int kfree (struct chmc*) ;
 int list_del (int *) ;
 int of_iounmap (int *,int ,int) ;

__attribute__((used)) static void chmc_destroy(struct platform_device *op, struct chmc *p)
{
 list_del(&p->list);
 of_iounmap(&op->resource[0], p->regs, 0x48);
 kfree(p);
}
