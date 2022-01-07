
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int* vec3_t ;
typedef scalar_t__ qboolean ;
struct TYPE_8__ {float trDuration; int trDelta; int trBase; int trType; } ;
struct TYPE_9__ {int constantLight; TYPE_2__ pos; int eType; int loopSound; int modelindex2; } ;
struct TYPE_7__ {int currentOrigin; int svFlags; } ;
struct TYPE_10__ {int speed; TYPE_3__ s; int pos1; int pos2; TYPE_1__ r; int moverState; int reached; int use; scalar_t__ model2; } ;
typedef TYPE_4__ gentity_t ;


 int ET_MOVER ;
 int G_ModelIndex (scalar_t__) ;
 int G_SoundIndex (char*) ;
 scalar_t__ G_SpawnFloat (char*,char*,float*) ;
 scalar_t__ G_SpawnString (char*,char*,char**) ;
 scalar_t__ G_SpawnVector (char*,char*,int*) ;
 int MOVER_POS1 ;
 int Reached_BinaryMover ;
 int SVF_USE_CURRENT_ORIGIN ;
 int TR_STATIONARY ;
 int Use_BinaryMover ;
 int VectorCopy (int ,int ) ;
 float VectorLength (int*) ;
 int VectorScale (int*,int,int ) ;
 int VectorSubtract (int ,int ,int*) ;
 int trap_LinkEntity (TYPE_4__*) ;

void InitMover( gentity_t *ent ) {
 vec3_t move;
 float distance;
 float light;
 vec3_t color;
 qboolean lightSet, colorSet;
 char *sound;



 if ( ent->model2 ) {
  ent->s.modelindex2 = G_ModelIndex( ent->model2 );
 }


 if ( G_SpawnString( "noise", "100", &sound ) ) {
  ent->s.loopSound = G_SoundIndex( sound );
 }


 lightSet = G_SpawnFloat( "light", "100", &light );
 colorSet = G_SpawnVector( "color", "1 1 1", color );
 if ( lightSet || colorSet ) {
  int r, g, b, i;

  r = color[0] * 255;
  if ( r > 255 ) {
   r = 255;
  }
  g = color[1] * 255;
  if ( g > 255 ) {
   g = 255;
  }
  b = color[2] * 255;
  if ( b > 255 ) {
   b = 255;
  }
  i = light / 4;
  if ( i > 255 ) {
   i = 255;
  }
  ent->s.constantLight = r | ( g << 8 ) | ( b << 16 ) | ( i << 24 );
 }


 ent->use = Use_BinaryMover;
 ent->reached = Reached_BinaryMover;

 ent->moverState = MOVER_POS1;
 ent->r.svFlags = SVF_USE_CURRENT_ORIGIN;
 ent->s.eType = ET_MOVER;
 VectorCopy (ent->pos1, ent->r.currentOrigin);
 trap_LinkEntity (ent);

 ent->s.pos.trType = TR_STATIONARY;
 VectorCopy( ent->pos1, ent->s.pos.trBase );


 VectorSubtract( ent->pos2, ent->pos1, move );
 distance = VectorLength( move );
 if ( ! ent->speed ) {
  ent->speed = 100;
 }
 VectorScale( move, ent->speed, ent->s.pos.trDelta );
 ent->s.pos.trDuration = distance * 1000 / ent->speed;
 if ( ent->s.pos.trDuration <= 0 ) {
  ent->s.pos.trDuration = 1;
 }
}
