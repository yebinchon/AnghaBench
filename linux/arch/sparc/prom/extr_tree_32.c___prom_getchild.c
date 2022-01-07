
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int phandle ;
struct TYPE_2__ {int (* no_child ) (int ) ;} ;


 int prom_lock ;
 TYPE_1__* prom_nodeops ;
 int restore_current () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ) ;

__attribute__((used)) static phandle __prom_getchild(phandle node)
{
 unsigned long flags;
 phandle cnode;

 spin_lock_irqsave(&prom_lock, flags);
 cnode = prom_nodeops->no_child(node);
 restore_current();
 spin_unlock_irqrestore(&prom_lock, flags);

 return cnode;
}
