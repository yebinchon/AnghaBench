
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_14__ {int* endpos; scalar_t__ startsolid; } ;
typedef TYPE_2__ aas_trace_t ;
struct TYPE_15__ {int areanum; int* start; int* end; struct TYPE_15__* next; int traveltime; int traveltype; scalar_t__ edgenum; scalar_t__ facenum; } ;
typedef TYPE_3__ aas_lreachability_t ;
struct TYPE_16__ {int faceflags; } ;
typedef TYPE_4__ aas_face_t ;
struct TYPE_17__ {int frames; int stopevent; } ;
typedef TYPE_5__ aas_clientmove_t ;
struct TYPE_18__ {scalar_t__* maxs; scalar_t__* mins; int* center; int numfaces; int firstface; } ;
typedef TYPE_6__ aas_area_t ;
struct TYPE_20__ {int rs_rocketjump; int rs_bfgjump; } ;
struct TYPE_19__ {int* faceindex; TYPE_4__* faces; TYPE_6__* areas; TYPE_1__* areasettings; } ;
struct TYPE_13__ {int areaflags; } ;


 TYPE_3__* AAS_AllocReachability () ;
 int AAS_AreaGrounded (int) ;
 scalar_t__ AAS_AreaSwim (int) ;
 float AAS_BFGJumpZVelocity (int*) ;
 int AAS_FaceCenter (int,int*) ;
 int AAS_HorizontalVelocityForJump (float,int*,int*,float*) ;
 int AAS_PointAreaNum (int*) ;
 int AAS_PredictClientMovement (TYPE_5__*,int,int*,int ,int,int*,int*,int,int,float,int,int,int) ;
 float AAS_RocketJumpZVelocity (int*) ;
 TYPE_2__ AAS_TraceClientBBox (int*,int*,int ,int) ;
 int AREA_WEAPONJUMP ;
 int FACE_GROUND ;
 int Log_Write (char*,int,int,int,int) ;
 int PRESENCE_CROUCH ;
 int PRESENCE_NORMAL ;
 int SE_ENTERLAVA ;
 int SE_ENTERSLIME ;
 int SE_ENTERWATER ;
 int SE_HITGROUND ;
 int SE_HITGROUNDAREA ;
 int SE_HITGROUNDDAMAGE ;
 int SE_TOUCHJUMPPAD ;
 int TRAVEL_BFGJUMP ;
 int TRAVEL_ROCKETJUMP ;
 int VectorCopy (int*,int*) ;
 int VectorScale (int*,float,int*) ;
 int VectorSet (int*,int ,int ,float) ;
 int VectorSubtract (int*,int*,int*) ;
 TYPE_9__ aassettings ;
 TYPE_8__ aasworld ;
 size_t abs (int) ;
 TYPE_3__** areareachability ;
 int qfalse ;
 int qtrue ;
 int reach_rocketjump ;

int AAS_Reachability_WeaponJump(int area1num, int area2num)
{
 int face2num, i, n, ret, visualize;
 float speed, zvel;

 aas_face_t *face2;
 aas_area_t *area1, *area2;
 aas_lreachability_t *lreach;
 vec3_t areastart, facecenter, start, end, dir, cmdmove;
 vec3_t velocity;
 aas_clientmove_t move;
 aas_trace_t trace;

 visualize = qfalse;




 if (!AAS_AreaGrounded(area1num) || AAS_AreaSwim(area1num)) return qfalse;
 if (!AAS_AreaGrounded(area2num)) return qfalse;

 if (!(aasworld.areasettings[area2num].areaflags & AREA_WEAPONJUMP)) return qfalse;

 area1 = &aasworld.areas[area1num];
 area2 = &aasworld.areas[area2num];

 if (area2->maxs[2] < area1->mins[2]) return qfalse;

 VectorCopy(aasworld.areas[area1num].center, start);

 if (!AAS_PointAreaNum(start)) Log_Write("area %d center %f %f %f in solid?\r\n", area1num,
       start[0], start[1], start[2]);
 VectorCopy(start, end);
 end[2] -= 1000;
 trace = AAS_TraceClientBBox(start, end, PRESENCE_CROUCH, -1);
 if (trace.startsolid) return qfalse;
 VectorCopy(trace.endpos, areastart);



 for (i = 0; i < area2->numfaces; i++)
 {
  face2num = aasworld.faceindex[area2->firstface + i];
  face2 = &aasworld.faces[abs(face2num)];

  if (!(face2->faceflags & FACE_GROUND)) continue;

  AAS_FaceCenter(face2num, facecenter);

  if (facecenter[2] < areastart[2] + 64) continue;

  for (n = 0; n < 1 ; n++)
  {

   if (n) zvel = AAS_BFGJumpZVelocity(areastart);
   else zvel = AAS_RocketJumpZVelocity(areastart);


   ret = AAS_HorizontalVelocityForJump(zvel, areastart, facecenter, &speed);
   if (ret && speed < 300)
   {

    VectorSubtract(facecenter, areastart, dir);
    dir[2] = 0;


    {

     VectorScale(dir, speed, cmdmove);
     VectorSet(velocity, 0, 0, zvel);







     AAS_PredictClientMovement(&move, -1, areastart, PRESENCE_NORMAL, qtrue,
            velocity, cmdmove, 30, 30, 0.1f,
            SE_ENTERWATER|SE_ENTERSLIME|
            SE_ENTERLAVA|SE_HITGROUNDDAMAGE|
            SE_TOUCHJUMPPAD|SE_HITGROUND|SE_HITGROUNDAREA, area2num, visualize);


     if (move.frames < 30 &&
       !(move.stopevent & (SE_ENTERSLIME|SE_ENTERLAVA|SE_HITGROUNDDAMAGE))
        && (move.stopevent & (SE_HITGROUNDAREA|SE_TOUCHJUMPPAD)))
     {

      lreach = AAS_AllocReachability();
      if (!lreach) return qfalse;
      lreach->areanum = area2num;
      lreach->facenum = 0;
      lreach->edgenum = 0;
      VectorCopy(areastart, lreach->start);
      VectorCopy(facecenter, lreach->end);
      if (n)
      {
       lreach->traveltype = TRAVEL_BFGJUMP;
       lreach->traveltime = aassettings.rs_bfgjump;
      }
      else
      {
       lreach->traveltype = TRAVEL_ROCKETJUMP;
       lreach->traveltime = aassettings.rs_rocketjump;
      }
      lreach->next = areareachability[area1num];
      areareachability[area1num] = lreach;

      reach_rocketjump++;
      return qtrue;
     }
    }
   }
  }
 }

 return qfalse;
}
