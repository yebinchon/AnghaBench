
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct aoetgt {int dummy; } ;
struct aoedev {int ntargets; struct aoetgt** targets; struct aoetgt** tgt; } ;


 int GFP_ATOMIC ;
 struct aoetgt** kcalloc (int,int,int ) ;
 int kfree (struct aoetgt**) ;
 int memmove (struct aoetgt**,struct aoetgt**,int) ;

__attribute__((used)) static struct aoetgt **
grow_targets(struct aoedev *d)
{
 ulong oldn, newn;
 struct aoetgt **tt;

 oldn = d->ntargets;
 newn = oldn * 2;
 tt = kcalloc(newn, sizeof(*d->targets), GFP_ATOMIC);
 if (!tt)
  return ((void*)0);
 memmove(tt, d->targets, sizeof(*d->targets) * oldn);
 d->tgt = tt + (d->tgt - d->targets);
 kfree(d->targets);
 d->targets = tt;
 d->ntargets = newn;

 return &d->targets[oldn];
}
