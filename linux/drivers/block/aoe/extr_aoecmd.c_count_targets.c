
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aoedev {int ntargets; TYPE_1__** targets; } ;
struct TYPE_2__ {scalar_t__ taint; } ;



__attribute__((used)) static int
count_targets(struct aoedev *d, int *untainted)
{
 int i, good;

 for (i = good = 0; i < d->ntargets && d->targets[i]; ++i)
  if (d->targets[i]->taint == 0)
   good++;

 if (untainted)
  *untainted = good;
 return i;
}
