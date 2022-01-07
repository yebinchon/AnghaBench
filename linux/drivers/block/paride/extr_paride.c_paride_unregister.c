
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t index; int name; } ;
typedef TYPE_1__ PIP ;


 int printk (char*,int ) ;
 TYPE_1__** protocols ;

void paride_unregister(PIP * pr)
{
 if (!pr)
  return;
 if (protocols[pr->index] != pr) {
  printk("paride: %s not registered\n", pr->name);
  return;
 }
 protocols[pr->index] = ((void*)0);
}
