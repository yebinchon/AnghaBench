
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int * vec3_t ;
struct TYPE_13__ {int * currentOrigin; } ;
struct TYPE_11__ {scalar_t__* trBase; } ;
struct TYPE_12__ {TYPE_1__ apos; } ;
struct TYPE_14__ {TYPE_3__ r; TYPE_2__ s; scalar_t__ nextthink; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_15__ {int * intermission_origin; scalar_t__* intermission_angle; scalar_t__ time; } ;


 int AngleVectors (scalar_t__*,int *,int *,int *) ;
 int G_SetOrigin (TYPE_4__*,int *) ;
 size_t PITCH ;
 size_t ROLL ;
 int VectorMA (int *,scalar_t__,int *,int *) ;
 int VectorSubtract (int *,int *,int *) ;
 TYPE_8__ level ;
 scalar_t__* offsetFirst ;
 scalar_t__* offsetSecond ;
 scalar_t__* offsetThird ;
 TYPE_4__* podium1 ;
 TYPE_4__* podium2 ;
 TYPE_4__* podium3 ;
 scalar_t__ trap_Cvar_VariableIntegerValue (char*) ;
 int vectoangles (int *,scalar_t__*) ;

__attribute__((used)) static void PodiumPlacementThink( gentity_t *podium ) {
 vec3_t vec;
 vec3_t origin;
 vec3_t f, r, u;

 podium->nextthink = level.time + 100;

 AngleVectors( level.intermission_angle, vec, ((void*)0), ((void*)0) );
 VectorMA( level.intermission_origin, trap_Cvar_VariableIntegerValue( "g_podiumDist" ), vec, origin );
 origin[2] -= trap_Cvar_VariableIntegerValue( "g_podiumDrop" );
 G_SetOrigin( podium, origin );

 if( podium1 ) {
  VectorSubtract( level.intermission_origin, podium->r.currentOrigin, vec );
  vectoangles( vec, podium1->s.apos.trBase );
  podium1->s.apos.trBase[PITCH] = 0;
  podium1->s.apos.trBase[ROLL] = 0;

  AngleVectors( podium1->s.apos.trBase, f, r, u );
  VectorMA( podium->r.currentOrigin, offsetFirst[0], f, vec );
  VectorMA( vec, offsetFirst[1], r, vec );
  VectorMA( vec, offsetFirst[2], u, vec );

  G_SetOrigin( podium1, vec );
 }

 if( podium2 ) {
  VectorSubtract( level.intermission_origin, podium->r.currentOrigin, vec );
  vectoangles( vec, podium2->s.apos.trBase );
  podium2->s.apos.trBase[PITCH] = 0;
  podium2->s.apos.trBase[ROLL] = 0;

  AngleVectors( podium2->s.apos.trBase, f, r, u );
  VectorMA( podium->r.currentOrigin, offsetSecond[0], f, vec );
  VectorMA( vec, offsetSecond[1], r, vec );
  VectorMA( vec, offsetSecond[2], u, vec );

  G_SetOrigin( podium2, vec );
 }

 if( podium3 ) {
  VectorSubtract( level.intermission_origin, podium->r.currentOrigin, vec );
  vectoangles( vec, podium3->s.apos.trBase );
  podium3->s.apos.trBase[PITCH] = 0;
  podium3->s.apos.trBase[ROLL] = 0;

  AngleVectors( podium3->s.apos.trBase, f, r, u );
  VectorMA( podium->r.currentOrigin, offsetThird[0], f, vec );
  VectorMA( vec, offsetThird[1], r, vec );
  VectorMA( vec, offsetThird[2], u, vec );

  G_SetOrigin( podium3, vec );
 }
}
