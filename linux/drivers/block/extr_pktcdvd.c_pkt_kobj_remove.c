
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktcdvd_kobj {int kobj; } ;


 int kobject_put (int *) ;

__attribute__((used)) static void pkt_kobj_remove(struct pktcdvd_kobj *p)
{
 if (p)
  kobject_put(&p->kobj);
}
