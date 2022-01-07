
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct master {int node; struct component_match* match; } ;
struct component_match {int num; TYPE_1__* compare; } ;
struct component {int * master; } ;
struct TYPE_2__ {struct component* component; } ;


 int component_master_debugfs_del (struct master*) ;
 int kfree (struct master*) ;
 int list_del (int *) ;

__attribute__((used)) static void free_master(struct master *master)
{
 struct component_match *match = master->match;
 int i;

 component_master_debugfs_del(master);
 list_del(&master->node);

 if (match) {
  for (i = 0; i < match->num; i++) {
   struct component *c = match->compare[i].component;
   if (c)
    c->master = ((void*)0);
  }
 }

 kfree(master);
}
