
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoetgt {int dummy; } ;
struct aoedev {int ntargets; struct aoetgt** targets; scalar_t__ maxbcnt; int rttdev; int rttavg; } ;


 int RTTAVG_INIT ;
 int RTTDEV_INIT ;
 int aoecmd_wreset (struct aoetgt*) ;

void
aoecmd_cleanslate(struct aoedev *d)
{
 struct aoetgt **t, **te;

 d->rttavg = RTTAVG_INIT;
 d->rttdev = RTTDEV_INIT;
 d->maxbcnt = 0;

 t = d->targets;
 te = t + d->ntargets;
 for (; t < te && *t; t++)
  aoecmd_wreset(*t);
}
