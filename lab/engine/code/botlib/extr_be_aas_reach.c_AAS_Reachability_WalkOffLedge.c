
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int vec_t ;
typedef int* vec3_t ;
struct TYPE_15__ {int* endpos; scalar_t__ startsolid; } ;
typedef TYPE_2__ aas_trace_t ;
struct TYPE_16__ {int normal; } ;
typedef TYPE_3__ aas_plane_t ;
struct TYPE_17__ {int areanum; int edgenum; int* start; int* end; struct TYPE_17__* next; scalar_t__ traveltime; int traveltype; scalar_t__ facenum; } ;
typedef TYPE_4__ aas_lreachability_t ;
struct TYPE_18__ {int faceflags; int numedges; int firstedge; int frontarea; int backarea; size_t planenum; } ;
typedef TYPE_5__ aas_face_t ;
struct TYPE_19__ {size_t* v; } ;
typedef TYPE_6__ aas_edge_t ;
struct TYPE_20__ {int numfaces; int firstface; } ;
typedef TYPE_7__ aas_area_t ;
struct TYPE_21__ {int* faceindex; int* edgeindex; TYPE_1__* areasettings; TYPE_3__* planes; int ** vertexes; TYPE_6__* edges; TYPE_5__* faces; TYPE_7__* areas; } ;
struct TYPE_14__ {int areaflags; int contents; } ;
struct TYPE_13__ {int rs_maxfallheight; int phys_gravity; scalar_t__ phys_falldelta5; scalar_t__ phys_falldelta10; scalar_t__ rs_falldamage10; scalar_t__ rs_falldamage5; scalar_t__ rs_startwalkoffledge; } ;


 TYPE_4__* AAS_AllocReachability () ;
 scalar_t__ AAS_AreaClusterPortal (int) ;
 int AAS_AreaGrounded (int) ;
 int AAS_AreaJumpPad (int) ;
 scalar_t__ AAS_AreaSwim (int) ;
 scalar_t__ AAS_FallDelta (int) ;
 int AAS_PointAreaNum (int*) ;
 scalar_t__ AAS_ReachabilityExists (int,int) ;
 int AAS_TraceAreas (int*,int*,int*,int *,int ) ;
 TYPE_2__ AAS_TraceClientBBox (int*,int*,int ,int) ;
 int AREACONTENTS_LAVA ;
 int AREACONTENTS_SLIME ;
 int AREA_GROUNDED ;
 int ARRAY_LEN (int*) ;
 int CrossProduct (int ,int*,int*) ;
 int FACE_GROUND ;
 int FACE_SOLID ;
 int PRESENCE_CROUCH ;
 int TRAVEL_WALKOFFLEDGE ;
 int VectorAdd (int *,int *,int*) ;
 int VectorCopy (int*,int*) ;
 int VectorMA (int*,int,int*,int*) ;
 int VectorNormalize (int*) ;
 int VectorScale (int*,double,int*) ;
 int VectorSubtract (int *,int *,int*) ;
 TYPE_10__ aassettings ;
 TYPE_9__ aasworld ;
 size_t abs (int) ;
 TYPE_4__** areareachability ;
 int fabs (int) ;
 int qfalse ;
 int qtrue ;
 int reach_walkoffledge ;

void AAS_Reachability_WalkOffLedge(int areanum)
{
 int i, j, k, l, m, n, p, areas[10], numareas;
 int face1num, face2num, face3num, edge1num, edge2num, edge3num;
 int otherareanum, gap, reachareanum, side;
 aas_area_t *area, *area2;
 aas_face_t *face1, *face2, *face3;
 aas_edge_t *edge;
 aas_plane_t *plane;
 vec_t *v1, *v2;
 vec3_t sharededgevec, mid, dir, testend;
 aas_lreachability_t *lreach;
 aas_trace_t trace;

 if (!AAS_AreaGrounded(areanum) || AAS_AreaSwim(areanum)) return;

 area = &aasworld.areas[areanum];

 for (i = 0; i < area->numfaces; i++)
 {
  face1num = aasworld.faceindex[area->firstface + i];
  face1 = &aasworld.faces[abs(face1num)];

  if (!(face1->faceflags & FACE_GROUND)) continue;

  for (k = 0; k < face1->numedges; k++)
  {
   edge1num = aasworld.edgeindex[face1->firstedge + k];

   for (j = 0; j < area->numfaces; j++)
   {
    face2num = aasworld.faceindex[area->firstface + j];
    face2 = &aasworld.faces[abs(face2num)];

    if (face2->faceflags & FACE_GROUND) continue;

    for (l = 0; l < face2->numedges; l++)
    {
     edge2num = aasworld.edgeindex[face2->firstedge + l];
     if (abs(edge1num) == abs(edge2num))
     {

      if (face2->frontarea == areanum) otherareanum = face2->backarea;
      else otherareanum = face2->frontarea;

      area2 = &aasworld.areas[otherareanum];

      if (aasworld.areasettings[otherareanum].areaflags & AREA_GROUNDED)
      {

       gap = qfalse;
       for (n = 0; n < area2->numfaces; n++)
       {
        face3num = aasworld.faceindex[area2->firstface + n];

        if (abs(face3num) == abs(face2num)) continue;

        face3 = &aasworld.faces[abs(face3num)];

        for (m = 0; m < face3->numedges; m++)
        {
         edge3num = aasworld.edgeindex[face3->firstedge + m];

         if (abs(edge3num) == abs(edge1num))
         {
          if (!(face3->faceflags & FACE_SOLID))
          {
           gap = qtrue;
           break;
          }

          if (face3->faceflags & FACE_GROUND)
          {
           gap = qfalse;
           break;
          }

          gap = qtrue;
          break;
         }
        }
        if (m < face3->numedges) break;
       }
       if (!gap) break;
      }

      edge = &aasworld.edges[abs(edge1num)];
      side = edge1num < 0;

      v1 = aasworld.vertexes[edge->v[side]];
      v2 = aasworld.vertexes[edge->v[!side]];

      plane = &aasworld.planes[face1->planenum];

      VectorSubtract(v2, v1, sharededgevec);
      CrossProduct(plane->normal, sharededgevec, dir);
      VectorNormalize(dir);

      VectorAdd(v1, v2, mid);
      VectorScale(mid, 0.5, mid);
      VectorMA(mid, 8, dir, mid);

      VectorCopy(mid, testend);
      testend[2] -= 1000;
      trace = AAS_TraceClientBBox(mid, testend, PRESENCE_CROUCH, -1);

      if (trace.startsolid)
      {

       break;
      }
      reachareanum = AAS_PointAreaNum(trace.endpos);
      if (reachareanum == areanum)
      {

       break;
      }
      if (AAS_ReachabilityExists(areanum, reachareanum))
      {

       break;
      }
      if (!AAS_AreaGrounded(reachareanum) && !AAS_AreaSwim(reachareanum))
      {

       break;
      }

      if (aasworld.areasettings[reachareanum].contents & (AREACONTENTS_SLIME
                      | AREACONTENTS_LAVA))
      {

       break;
      }

      numareas = AAS_TraceAreas(mid, testend, areas, ((void*)0), ARRAY_LEN(areas));
      for (p = 0; p < numareas; p++)
       if (AAS_AreaClusterPortal(areas[p]))
        break;
      if (p < numareas)
       break;

      if (aassettings.rs_maxfallheight && fabs(mid[2] - trace.endpos[2]) > aassettings.rs_maxfallheight)
       break;

      lreach = AAS_AllocReachability();
      if (!lreach) break;
      lreach->areanum = reachareanum;
      lreach->facenum = 0;
      lreach->edgenum = edge1num;
      VectorCopy(mid, lreach->start);
      VectorCopy(trace.endpos, lreach->end);
      lreach->traveltype = TRAVEL_WALKOFFLEDGE;
      lreach->traveltime = aassettings.rs_startwalkoffledge + fabs(mid[2] - trace.endpos[2]) * 50 / aassettings.phys_gravity;
      if (!AAS_AreaSwim(reachareanum) && !AAS_AreaJumpPad(reachareanum))
      {
       if (AAS_FallDelta(mid[2] - trace.endpos[2]) > aassettings.phys_falldelta5)
       {
        lreach->traveltime += aassettings.rs_falldamage5;
       }
       else if (AAS_FallDelta(mid[2] - trace.endpos[2]) > aassettings.phys_falldelta10)
       {
        lreach->traveltime += aassettings.rs_falldamage10;
       }
      }
      lreach->next = areareachability[areanum];
      areareachability[areanum] = lreach;

      reach_walkoffledge++;
     }
    }
   }
  }
 }
}
