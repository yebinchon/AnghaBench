
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
typedef scalar_t__ qboolean ;
struct TYPE_6__ {TYPE_1__* client; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_5__ {int accuracy_hits; } ;


 int CrossProduct (int ,int ,int ) ;
 int DEFAULT_SHOTGUN_COUNT ;
 int DEFAULT_SHOTGUN_SPREAD ;
 int PerpendicularVector (int ,int ) ;
 int Q_crandom (int*) ;
 scalar_t__ ShotgunPellet (int ,int ,TYPE_2__*) ;
 int VectorMA (int ,float,int ,int ) ;
 int VectorNormalize2 (int ,int ) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

void ShotgunPattern( vec3_t origin, vec3_t origin2, int seed, gentity_t *ent ) {
 int i;
 float r, u;
 vec3_t end;
 vec3_t forward, right, up;
 qboolean hitClient = qfalse;



 VectorNormalize2( origin2, forward );
 PerpendicularVector( right, forward );
 CrossProduct( forward, right, up );


 for ( i = 0 ; i < DEFAULT_SHOTGUN_COUNT ; i++ ) {
  r = Q_crandom( &seed ) * DEFAULT_SHOTGUN_SPREAD * 16;
  u = Q_crandom( &seed ) * DEFAULT_SHOTGUN_SPREAD * 16;
  VectorMA( origin, 8192 * 16, forward, end);
  VectorMA (end, r, right, end);
  VectorMA (end, u, up, end);
  if( ShotgunPellet( origin, end, ent ) && !hitClient ) {
   hitClient = qtrue;
   ent->client->accuracy_hits++;
  }
 }
}
