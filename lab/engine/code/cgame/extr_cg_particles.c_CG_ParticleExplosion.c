
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_5__ {double alpha; int roll; int shaderAnim; int width; int height; int endheight; int endwidth; int accel; int vel; int org; int type; scalar_t__ endtime; scalar_t__ alphavel; scalar_t__ time; struct TYPE_5__* next; } ;
typedef TYPE_1__ cparticle_t ;
struct TYPE_6__ {scalar_t__ time; } ;


 int CG_Error (char*,...) ;
 int P_ANIM ;
 int Q_stricmp (char*,scalar_t__) ;
 int VectorClear (int ) ;
 int VectorCopy (int ,int ) ;
 TYPE_1__* active_particles ;
 TYPE_3__ cg ;
 int crandom () ;
 TYPE_1__* free_particles ;
 scalar_t__* shaderAnimNames ;
 int* shaderAnimSTRatio ;

void CG_ParticleExplosion (char *animStr, vec3_t origin, vec3_t vel, int duration, int sizeStart, int sizeEnd)
{
 cparticle_t *p;
 int anim;

 if (animStr < (char *)10)
  CG_Error( "CG_ParticleExplosion: animStr is probably an index rather than a string" );


 for (anim=0; shaderAnimNames[anim]; anim++) {
  if (!Q_stricmp( animStr, shaderAnimNames[anim] ))
   break;
 }
 if (!shaderAnimNames[anim]) {
  CG_Error("CG_ParticleExplosion: unknown animation string: %s", animStr);
  return;
 }

 if (!free_particles)
  return;
 p = free_particles;
 free_particles = p->next;
 p->next = active_particles;
 active_particles = p;
 p->time = cg.time;



 p->alpha = 0.5;

 p->alphavel = 0;

 if (duration < 0) {
  duration *= -1;
  p->roll = 0;
 } else {
  p->roll = crandom()*179;
 }

 p->shaderAnim = anim;

 p->width = sizeStart;
 p->height = sizeStart*shaderAnimSTRatio[anim];

 p->endheight = sizeEnd;
 p->endwidth = sizeEnd*shaderAnimSTRatio[anim];

 p->endtime = cg.time + duration;

 p->type = P_ANIM;

 VectorCopy( origin, p->org );
 VectorCopy( vel, p->vel );
 VectorClear( p->accel );

}
