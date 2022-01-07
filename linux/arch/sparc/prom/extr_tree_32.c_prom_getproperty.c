
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int phandle ;
struct TYPE_2__ {int (* no_getprop ) (int ,char const*,char*) ;} ;


 int prom_getproplen (int ,char const*) ;
 int prom_lock ;
 TYPE_1__* prom_nodeops ;
 int restore_current () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,char const*,char*) ;

int prom_getproperty(phandle node, const char *prop, char *buffer, int bufsize)
{
 int plen, ret;
 unsigned long flags;

 plen = prom_getproplen(node, prop);
 if((plen > bufsize) || (plen == 0) || (plen == -1))
  return -1;

 spin_lock_irqsave(&prom_lock, flags);
 ret = prom_nodeops->no_getprop(node, prop, buffer);
 restore_current();
 spin_unlock_irqrestore(&prom_lock, flags);
 return ret;
}
