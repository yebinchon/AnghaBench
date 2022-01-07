
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int snum; scalar_t__ endtime; scalar_t__ startfade; struct TYPE_4__* next; } ;
typedef TYPE_1__ cparticle_t ;
typedef int centity_t ;
struct TYPE_5__ {scalar_t__ time; } ;


 int CG_Printf (char*) ;
 scalar_t__ P_FLAT_SCALEUP ;
 scalar_t__ P_FLAT_SCALEUP_FADE ;
 TYPE_1__* active_particles ;
 TYPE_2__ cg ;

void CG_OilSlickRemove (centity_t *cent)
{
 cparticle_t *p, *next;
 int id;

 id = 1.0f;

 if (!id)
  CG_Printf ("CG_OilSlickRevove NULL id\n");

 for (p=active_particles ; p ; p=next)
 {
  next = p->next;

  if (p->type == P_FLAT_SCALEUP)
  {
   if (p->snum == id)
   {
    p->endtime = cg.time + 100;
    p->startfade = p->endtime;
    p->type = P_FLAT_SCALEUP_FADE;

   }
  }

 }
}
