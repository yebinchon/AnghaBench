
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_10__ {int dist; int* normal; } ;
typedef TYPE_1__ aas_plane_t ;
struct TYPE_11__ {size_t areanum; int* start; int* end; int edgenum; int facenum; struct TYPE_11__* next; int traveltime; int traveltype; } ;
typedef TYPE_2__ aas_lreachability_t ;
struct TYPE_13__ {int rs_funcbob; } ;
struct TYPE_12__ {int (* Print ) (int ,char*) ;} ;


 TYPE_2__* AAS_AllocReachability () ;
 int AAS_BSPModelMinsMaxsOrigin (int,int*,int*,int*,int *) ;
 TYPE_2__* AAS_FindFaceReachabilities (int**,int,TYPE_1__*,int ) ;
 int AAS_FloatForBSPEpairKey (int,char*,float*) ;
 int AAS_FreeReachability (TYPE_2__*) ;
 int AAS_IntForBSPEpairKey (int,char*,int*) ;
 int AAS_NextBSPEntity (int) ;
 int AAS_PermanentLine (int*,int*,int) ;
 int AAS_PointAreaNum (int*) ;
 int AAS_TraceAreas (int*,int*,int*,int**,int) ;
 int AAS_TravelFlagsForTeam (int) ;
 int AAS_ValueForBSPEpairKey (int,char*,char*,int) ;
 int AAS_VectorForBSPEpairKey (int,char*,int*) ;
 int Log_Write (char*,size_t,size_t,...) ;
 int MAX_EPAIRKEY ;
 int PRT_ERROR ;
 int TRAVEL_FUNCBOB ;
 int VectorAdd (int*,int*,int*) ;
 int VectorCopy (int*,int*) ;
 int VectorMA (int*,int,int*,int*) ;
 int VectorNormalize (int*) ;
 int VectorScale (int*,double,int*) ;
 int VectorSet (int*,int ,int ,int) ;
 int VectorSubtract (int*,int*,int*) ;
 TYPE_5__ aassettings ;
 TYPE_2__** areareachability ;
 int atoi (char*) ;
 TYPE_3__ botimport ;
 int qfalse ;
 int qtrue ;
 int reach_funcbob ;
 scalar_t__ strcmp (char*,char*) ;
 int stub1 (int ,char*) ;
 int stub2 (int ,char*) ;

void AAS_Reachability_FuncBobbing(void)
{
 int ent, spawnflags, modelnum, axis;
 int i, numareas, areas[10];
 char classname[MAX_EPAIRKEY], model[MAX_EPAIRKEY];
 vec3_t origin, move_end, move_start, move_start_top, move_end_top;
 vec3_t mins, maxs, angles = {0, 0, 0};
 vec3_t start_edgeverts[4], end_edgeverts[4], mid;
 vec3_t org, start, end, dir, points[10];
 float height;
 aas_plane_t start_plane, end_plane;
 aas_lreachability_t *startreach, *endreach, *nextstartreach, *nextendreach, *lreach;
 aas_lreachability_t *firststartreach, *firstendreach;

 for (ent = AAS_NextBSPEntity(0); ent; ent = AAS_NextBSPEntity(ent))
 {
  if (!AAS_ValueForBSPEpairKey(ent, "classname", classname, MAX_EPAIRKEY)) continue;
  if (strcmp(classname, "func_bobbing")) continue;
  AAS_FloatForBSPEpairKey(ent, "height", &height);
  if (!height) height = 32;

  if (!AAS_ValueForBSPEpairKey(ent, "model", model, MAX_EPAIRKEY))
  {
   botimport.Print(PRT_ERROR, "func_bobbing without model\n");
   continue;
  }

  modelnum = atoi(model+1);
  if (modelnum <= 0)
  {
   botimport.Print(PRT_ERROR, "func_bobbing with invalid model number\n");
   continue;
  }

  if (!AAS_VectorForBSPEpairKey(ent, "origin", origin))
   VectorSet(origin, 0, 0, 0);

  AAS_BSPModelMinsMaxsOrigin(modelnum, angles, mins, maxs, ((void*)0));

  VectorAdd(mins, origin, mins);
  VectorAdd(maxs, origin, maxs);

  VectorAdd(mins, maxs, mid);
  VectorScale(mid, 0.5, mid);
  VectorCopy(mid, origin);

  VectorCopy(origin, move_end);
  VectorCopy(origin, move_start);

  AAS_IntForBSPEpairKey(ent, "spawnflags", &spawnflags);

  if (spawnflags & 1) axis = 0;
  else if (spawnflags & 2) axis = 1;
  else axis = 2;

  move_start[axis] -= height;
  move_end[axis] += height;

  Log_Write("funcbob model %d, start = {%1.1f, %1.1f, %1.1f} end = {%1.1f, %1.1f, %1.1f}\n",
     modelnum, move_start[0], move_start[1], move_start[2], move_end[0], move_end[1], move_end[2]);
  for (i = 0; i < 4; i++)
  {
   VectorCopy(move_start, start_edgeverts[i]);
   start_edgeverts[i][2] += maxs[2] - mid[2];
   start_edgeverts[i][2] += 24;
  }
  start_edgeverts[0][0] += maxs[0] - mid[0];
  start_edgeverts[0][1] += maxs[1] - mid[1];
  start_edgeverts[1][0] += maxs[0] - mid[0];
  start_edgeverts[1][1] += mins[1] - mid[1];
  start_edgeverts[2][0] += mins[0] - mid[0];
  start_edgeverts[2][1] += mins[1] - mid[1];
  start_edgeverts[3][0] += mins[0] - mid[0];
  start_edgeverts[3][1] += maxs[1] - mid[1];

  start_plane.dist = start_edgeverts[0][2];
  VectorSet(start_plane.normal, 0, 0, 1);

  for (i = 0; i < 4; i++)
  {
   VectorCopy(move_end, end_edgeverts[i]);
   end_edgeverts[i][2] += maxs[2] - mid[2];
   end_edgeverts[i][2] += 24;
  }
  end_edgeverts[0][0] += maxs[0] - mid[0];
  end_edgeverts[0][1] += maxs[1] - mid[1];
  end_edgeverts[1][0] += maxs[0] - mid[0];
  end_edgeverts[1][1] += mins[1] - mid[1];
  end_edgeverts[2][0] += mins[0] - mid[0];
  end_edgeverts[2][1] += mins[1] - mid[1];
  end_edgeverts[3][0] += mins[0] - mid[0];
  end_edgeverts[3][1] += maxs[1] - mid[1];

  end_plane.dist = end_edgeverts[0][2];
  VectorSet(end_plane.normal, 0, 0, 1);
  VectorCopy(move_start, move_start_top);
  move_start_top[2] += maxs[2] - mid[2] + 24;
  VectorCopy(move_end, move_end_top);
  move_end_top[2] += maxs[2] - mid[2] + 24;

  if (!AAS_PointAreaNum(move_start_top)) continue;
  if (!AAS_PointAreaNum(move_end_top)) continue;

  for (i = 0; i < 2; i++)
  {

   if (i == 0)
   {
    firststartreach = AAS_FindFaceReachabilities(start_edgeverts, 4, &start_plane, qtrue);
    firstendreach = AAS_FindFaceReachabilities(end_edgeverts, 4, &end_plane, qfalse);
   }
   else
   {
    firststartreach = AAS_FindFaceReachabilities(end_edgeverts, 4, &end_plane, qtrue);
    firstendreach = AAS_FindFaceReachabilities(start_edgeverts, 4, &start_plane, qfalse);
   }


   for (startreach = firststartreach; startreach; startreach = nextstartreach)
   {
    nextstartreach = startreach->next;




    for (endreach = firstendreach; endreach; endreach = nextendreach)
    {
     nextendreach = endreach->next;




     Log_Write("funcbob reach from area %d to %d\n", startreach->areanum, endreach->areanum);


     if (i == 0) VectorCopy(move_start_top, org);
     else VectorCopy(move_end_top, org);
     VectorSubtract(startreach->start, org, dir);
     dir[2] = 0;
     VectorNormalize(dir);
     VectorCopy(startreach->start, start);
     VectorMA(startreach->start, 1, dir, start);
     start[2] += 1;
     VectorMA(startreach->start, 16, dir, end);
     end[2] += 1;

     numareas = AAS_TraceAreas(start, end, areas, points, 10);
     if (numareas <= 0) continue;
     if (numareas > 1) VectorCopy(points[1], startreach->start);
     else VectorCopy(end, startreach->start);

     if (!AAS_PointAreaNum(startreach->start)) continue;
     if (!AAS_PointAreaNum(endreach->end)) continue;

     lreach = AAS_AllocReachability();
     lreach->areanum = endreach->areanum;
     if (i == 0) lreach->edgenum = ((int)move_start[axis] << 16) | ((int) move_end[axis] & 0x0000ffff);
     else lreach->edgenum = ((int)move_end[axis] << 16) | ((int) move_start[axis] & 0x0000ffff);
     lreach->facenum = (spawnflags << 16) | modelnum;
     VectorCopy(startreach->start, lreach->start);
     VectorCopy(endreach->end, lreach->end);




     lreach->traveltype = TRAVEL_FUNCBOB;
     lreach->traveltype |= AAS_TravelFlagsForTeam(ent);
     lreach->traveltime = aassettings.rs_funcbob;
     reach_funcbob++;
     lreach->next = areareachability[startreach->areanum];
     areareachability[startreach->areanum] = lreach;

    }
   }
   for (startreach = firststartreach; startreach; startreach = nextstartreach)
   {
    nextstartreach = startreach->next;
    AAS_FreeReachability(startreach);
   }
   for (endreach = firstendreach; endreach; endreach = nextendreach)
   {
    nextendreach = endreach->next;
    AAS_FreeReachability(endreach);
   }

   if (!(spawnflags & 1) && !(spawnflags & 2)) break;
  }
 }
}
