
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef double* vec3_t ;
struct TYPE_7__ {double time; float alpha; float alphavel; scalar_t__ type; double endtime; double* org; float* vel; float* accel; struct TYPE_7__* next; scalar_t__ color; } ;
typedef TYPE_2__ cparticle_t ;
struct TYPE_6__ {int * viewaxis; } ;
struct TYPE_8__ {double time; TYPE_1__ refdef; } ;


 int AngleVectors (double*,int ,int ,int ) ;
 int CG_AddParticleToScene (TYPE_2__*,double*,float) ;
 int CG_ClearParticles () ;
 scalar_t__ P_ANIM ;
 scalar_t__ P_BAT ;
 scalar_t__ P_BLEED ;
 scalar_t__ P_FLAT_SCALEUP_FADE ;
 scalar_t__ P_SMOKE ;
 scalar_t__ P_SMOKE_IMPACT ;
 scalar_t__ P_SPRITE ;
 scalar_t__ P_WEATHER_FLURRY ;
 size_t ROLL ;
 int VectorCopy (int ,int ) ;
 TYPE_2__* active_particles ;
 TYPE_3__ cg ;
 void* free_particles ;
 int initparticles ;
 double oldtime ;
 int rforward ;
 double roll ;
 int rright ;
 int rup ;
 int vectoangles (int ,double*) ;
 int vforward ;
 int vright ;
 int vup ;

void CG_AddParticles (void)
{
 cparticle_t *p, *next;
 float alpha;
 float time, time2;
 vec3_t org;
 cparticle_t *active, *tail;
 vec3_t rotate_ang;

 if (!initparticles)
  CG_ClearParticles ();

 VectorCopy( cg.refdef.viewaxis[0], vforward );
 VectorCopy( cg.refdef.viewaxis[1], vright );
 VectorCopy( cg.refdef.viewaxis[2], vup );

 vectoangles( cg.refdef.viewaxis[0], rotate_ang );
 roll += ((cg.time - oldtime) * 0.1) ;
 rotate_ang[ROLL] += (roll*0.9);
 AngleVectors ( rotate_ang, rforward, rright, rup);

 oldtime = cg.time;

 active = ((void*)0);
 tail = ((void*)0);

 for (p=active_particles ; p ; p=next)
 {

  next = p->next;

  time = (cg.time - p->time)*0.001;

  alpha = p->alpha + time*p->alphavel;
  if (alpha <= 0)
  {
   p->next = free_particles;
   free_particles = p;
   p->type = 0;
   p->color = 0;
   p->alpha = 0;
   continue;
  }

  if (p->type == P_SMOKE || p->type == P_ANIM || p->type == P_BLEED || p->type == P_SMOKE_IMPACT)
  {
   if (cg.time > p->endtime)
   {
    p->next = free_particles;
    free_particles = p;
    p->type = 0;
    p->color = 0;
    p->alpha = 0;

    continue;
   }

  }

  if (p->type == P_WEATHER_FLURRY)
  {
   if (cg.time > p->endtime)
   {
    p->next = free_particles;
    free_particles = p;
    p->type = 0;
    p->color = 0;
    p->alpha = 0;

    continue;
   }
  }


  if (p->type == P_FLAT_SCALEUP_FADE)
  {
   if (cg.time > p->endtime)
   {
    p->next = free_particles;
    free_particles = p;
    p->type = 0;
    p->color = 0;
    p->alpha = 0;
    continue;
   }

  }

  if ((p->type == P_BAT || p->type == P_SPRITE) && p->endtime < 0) {

   CG_AddParticleToScene (p, p->org, alpha);
   p->next = free_particles;
   free_particles = p;
   p->type = 0;
   p->color = 0;
   p->alpha = 0;
   continue;
  }

  p->next = ((void*)0);
  if (!tail)
   active = tail = p;
  else
  {
   tail->next = p;
   tail = p;
  }

  if (alpha > 1.0)
   alpha = 1;

  time2 = time*time;

  org[0] = p->org[0] + p->vel[0]*time + p->accel[0]*time2;
  org[1] = p->org[1] + p->vel[1]*time + p->accel[1]*time2;
  org[2] = p->org[2] + p->vel[2]*time + p->accel[2]*time2;

  CG_AddParticleToScene (p, org, alpha);
 }

 active_particles = active;
}
