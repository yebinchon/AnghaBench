
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_5__ {int traveltype; float edgenum; float facenum; int areanum; int start; int end; } ;
typedef TYPE_1__ aas_reachability_t ;
typedef int aas_clientmove_t ;
struct TYPE_6__ {float phys_jumpvel; } ;


 int AAS_DrawArrow (int ,int ,int ,int ) ;
 int AAS_DrawCross (float*,int,int ) ;
 int AAS_HorizontalVelocityForJump (float,int ,int ,float*) ;
 int AAS_JumpReachRunStart (TYPE_1__*,float*) ;
 int AAS_PredictClientMovement (int *,int,int ,int ,int ,float*,float*,int,int,float,int,int ,int ) ;
 float AAS_RocketJumpZVelocity (int ) ;
 int AAS_ShowAreaPolygons (int ,int,int ) ;
 int LINECOLOR_BLUE ;
 int LINECOLOR_YELLOW ;
 int PRESENCE_NORMAL ;
 int SE_ENTERLAVA ;
 int SE_ENTERSLIME ;
 int SE_ENTERWATER ;
 int SE_HITGROUND ;
 int SE_HITGROUNDAREA ;
 int SE_HITGROUNDDAMAGE ;
 int SE_TOUCHJUMPPAD ;
 int TRAVELTYPE_MASK ;
 int TRAVEL_JUMP ;
 int TRAVEL_JUMPPAD ;
 int TRAVEL_ROCKETJUMP ;
 int TRAVEL_WALKOFFLEDGE ;
 int VectorClear (float*) ;
 int VectorNormalize (float*) ;
 int VectorScale (float*,float,float*) ;
 int VectorSet (float*,int ,int ,float) ;
 int VectorSubtract (int ,int ,float*) ;
 TYPE_2__ aassettings ;
 int qtrue ;

void AAS_ShowReachability(aas_reachability_t *reach)
{
 vec3_t dir, cmdmove, velocity;
 float speed, zvel;
 aas_clientmove_t move;

 AAS_ShowAreaPolygons(reach->areanum, 5, qtrue);

 AAS_DrawArrow(reach->start, reach->end, LINECOLOR_BLUE, LINECOLOR_YELLOW);

 if ((reach->traveltype & TRAVELTYPE_MASK) == TRAVEL_JUMP ||
  (reach->traveltype & TRAVELTYPE_MASK) == TRAVEL_WALKOFFLEDGE)
 {
  AAS_HorizontalVelocityForJump(aassettings.phys_jumpvel, reach->start, reach->end, &speed);

  VectorSubtract(reach->end, reach->start, dir);
  dir[2] = 0;
  VectorNormalize(dir);

  VectorScale(dir, speed, velocity);

  VectorClear(cmdmove);
  cmdmove[2] = aassettings.phys_jumpvel;

  AAS_PredictClientMovement(&move, -1, reach->start, PRESENCE_NORMAL, qtrue,
         velocity, cmdmove, 3, 30, 0.1f,
         SE_HITGROUND|SE_ENTERWATER|SE_ENTERSLIME|
         SE_ENTERLAVA|SE_HITGROUNDDAMAGE, 0, qtrue);

  if ((reach->traveltype & TRAVELTYPE_MASK) == TRAVEL_JUMP)
  {
   AAS_JumpReachRunStart(reach, dir);
   AAS_DrawCross(dir, 4, LINECOLOR_BLUE);
  }
 }
 else if ((reach->traveltype & TRAVELTYPE_MASK) == TRAVEL_ROCKETJUMP)
 {
  zvel = AAS_RocketJumpZVelocity(reach->start);
  AAS_HorizontalVelocityForJump(zvel, reach->start, reach->end, &speed);

  VectorSubtract(reach->end, reach->start, dir);
  dir[2] = 0;
  VectorNormalize(dir);

  VectorScale(dir, speed, cmdmove);
  VectorSet(velocity, 0, 0, zvel);

  AAS_PredictClientMovement(&move, -1, reach->start, PRESENCE_NORMAL, qtrue,
         velocity, cmdmove, 30, 30, 0.1f,
         SE_ENTERWATER|SE_ENTERSLIME|
         SE_ENTERLAVA|SE_HITGROUNDDAMAGE|
         SE_TOUCHJUMPPAD|SE_HITGROUNDAREA, reach->areanum, qtrue);
 }
 else if ((reach->traveltype & TRAVELTYPE_MASK) == TRAVEL_JUMPPAD)
 {
  VectorSet(cmdmove, 0, 0, 0);

  VectorSubtract(reach->end, reach->start, dir);
  dir[2] = 0;
  VectorNormalize(dir);


  VectorScale(dir, reach->edgenum, velocity);

  velocity[2] = reach->facenum;

  AAS_PredictClientMovement(&move, -1, reach->start, PRESENCE_NORMAL, qtrue,
         velocity, cmdmove, 30, 30, 0.1f,
         SE_ENTERWATER|SE_ENTERSLIME|
         SE_ENTERLAVA|SE_HITGROUNDDAMAGE|
         SE_TOUCHJUMPPAD|SE_HITGROUNDAREA, reach->areanum, qtrue);
 }
}
