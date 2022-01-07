
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoetgt {int addr; } ;
struct aoedev {int ntargets; struct aoetgt** targets; } ;


 scalar_t__ memcmp (int ,char*,int) ;

__attribute__((used)) static struct aoetgt *
gettgt(struct aoedev *d, char *addr)
{
 struct aoetgt **t, **e;

 t = d->targets;
 e = t + d->ntargets;
 for (; t < e && *t; t++)
  if (memcmp((*t)->addr, addr, sizeof((*t)->addr)) == 0)
   return *t;
 return ((void*)0);
}
