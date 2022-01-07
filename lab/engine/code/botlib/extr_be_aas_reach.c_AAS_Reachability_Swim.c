
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_10__ {int normal; } ;
typedef TYPE_2__ aas_plane_t ;
struct TYPE_11__ {int areanum; int facenum; int traveltime; struct TYPE_11__* next; int traveltype; int end; int start; scalar_t__ edgenum; } ;
typedef TYPE_3__ aas_lreachability_t ;
struct TYPE_12__ {int planenum; } ;
typedef TYPE_4__ aas_face_t ;
struct TYPE_13__ {scalar_t__* mins; scalar_t__* maxs; int numfaces; int firstface; } ;
typedef TYPE_5__ aas_area_t ;
struct TYPE_14__ {int* faceindex; TYPE_2__* planes; TYPE_4__* faces; TYPE_5__* areas; TYPE_1__* areasettings; } ;
struct TYPE_9__ {int presencetype; } ;


 TYPE_3__* AAS_AllocReachability () ;
 int AAS_AreaSwim (int) ;
 int AAS_AreaVolume (int) ;
 int AAS_FaceCenter (int,int ) ;
 int AAS_PointContents (int ) ;
 int CONTENTS_LAVA ;
 int CONTENTS_SLIME ;
 int CONTENTS_WATER ;
 int INSIDEUNITS ;
 int PRESENCE_NORMAL ;
 int TRAVEL_SWIM ;
 int VectorCopy (int ,int ) ;
 int VectorMA (int ,int ,int ,int ) ;
 TYPE_7__ aasworld ;
 int abs (int) ;
 TYPE_3__** areareachability ;
 int qfalse ;
 int qtrue ;
 int reach_swim ;

int AAS_Reachability_Swim(int area1num, int area2num)
{
 int i, j, face1num, face2num, side1;
 aas_area_t *area1, *area2;
 aas_lreachability_t *lreach;
 aas_face_t *face1;
 aas_plane_t *plane;
 vec3_t start;

 if (!AAS_AreaSwim(area1num) || !AAS_AreaSwim(area2num)) return qfalse;

 if (!(aasworld.areasettings[area2num].presencetype & PRESENCE_NORMAL)) return qfalse;

 area1 = &aasworld.areas[area1num];
 area2 = &aasworld.areas[area2num];


 for (i = 0; i < 3; i++)
 {
  if (area1->mins[i] > area2->maxs[i] + 10) return qfalse;
  if (area1->maxs[i] < area2->mins[i] - 10) return qfalse;
 }

 for (i = 0; i < area1->numfaces; i++)
 {
  face1num = aasworld.faceindex[area1->firstface + i];
  side1 = face1num < 0;
  face1num = abs(face1num);

  for (j = 0; j < area2->numfaces; j++)
  {
   face2num = abs(aasworld.faceindex[area2->firstface + j]);

   if (face1num == face2num)
   {
    AAS_FaceCenter(face1num, start);

    if (AAS_PointContents(start) & (CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER))
    {

     face1 = &aasworld.faces[face1num];

     lreach = AAS_AllocReachability();
     if (!lreach) return qfalse;
     lreach->areanum = area2num;
     lreach->facenum = face1num;
     lreach->edgenum = 0;
     VectorCopy(start, lreach->start);
     plane = &aasworld.planes[face1->planenum ^ side1];
     VectorMA(lreach->start, -INSIDEUNITS, plane->normal, lreach->end);
     lreach->traveltype = TRAVEL_SWIM;
     lreach->traveltime = 1;

     if (AAS_AreaVolume(area2num) < 800)
      lreach->traveltime += 200;


     lreach->next = areareachability[area1num];
     areareachability[area1num] = lreach;
     reach_swim++;
     return qtrue;
    }
   }
  }
 }
 return qfalse;
}
