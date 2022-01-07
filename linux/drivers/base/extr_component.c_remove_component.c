
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct master {TYPE_2__* match; } ;
struct component {int dummy; } ;
struct TYPE_4__ {size_t num; TYPE_1__* compare; } ;
struct TYPE_3__ {struct component* component; } ;



__attribute__((used)) static void remove_component(struct master *master, struct component *c)
{
 size_t i;


 for (i = 0; i < master->match->num; i++)
  if (master->match->compare[i].component == c)
   master->match->compare[i].component = ((void*)0);
}
