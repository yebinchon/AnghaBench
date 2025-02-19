
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int winding_t ;
typedef int* vec3_t ;
struct TYPE_19__ {int planenum; struct TYPE_19__** children; TYPE_4__* tmparea; } ;
typedef TYPE_2__ tmp_node_t ;
struct TYPE_20__ {int faceflags; size_t planenum; TYPE_4__* frontarea; struct TYPE_20__** next; TYPE_1__* winding; } ;
typedef TYPE_3__ tmp_face_t ;
struct TYPE_21__ {int contents; int presencetype; TYPE_3__* tmpfaces; } ;
typedef TYPE_4__ tmp_area_t ;
struct TYPE_22__ {int* normal; double dist; } ;
typedef TYPE_5__ plane_t ;
struct TYPE_23__ {int nodes; } ;
struct TYPE_18__ {int numpoints; int** p; } ;


 TYPE_2__* AAS_AllocTmpNode () ;
 int AAS_RefreshLadderSubdividedTree_r (int ,TYPE_4__*,TYPE_2__*,TYPE_2__*,int) ;
 int AAS_SplitArea (TYPE_4__*,int,TYPE_4__**,TYPE_4__**) ;
 int * AAS_SplitWinding (TYPE_4__*,int) ;
 int AREACONTENTS_LAVA ;
 int AREACONTENTS_SLIME ;
 int AREACONTENTS_WATER ;
 double DotProduct (int*,int*) ;
 int FACE_GROUND ;
 int FACE_LADDER ;
 int FindFloatPlane (int*,float) ;
 int FreeWinding (int *) ;
 int PRESENCE_NORMAL ;
 int VectorCopy (int*,int*) ;
 TYPE_5__* mapplanes ;
 int numladdersubdivisions ;
 int qprintf (char*,int ) ;
 TYPE_6__ tmpaasworld ;

tmp_node_t *AAS_LadderSubdivideArea_r(tmp_node_t *tmpnode)
{
 int side1, i, planenum;
 int foundladderface, foundgroundface;
 float dist;
 tmp_area_t *tmparea, *frontarea, *backarea;
 tmp_face_t *face1;
 tmp_node_t *tmpnode1, *tmpnode2;
 vec3_t lowestpoint, normal = {0, 0, 1};
 plane_t *plane;
 winding_t *w;

 tmparea = tmpnode->tmparea;

 if (tmparea->contents & (AREACONTENTS_WATER
         | AREACONTENTS_LAVA
         | AREACONTENTS_SLIME)) return tmpnode;

 if (!(tmparea->presencetype & PRESENCE_NORMAL)) return tmpnode;

 foundladderface = 0;
 foundgroundface = 0;
 lowestpoint[2] = 99999;

 for (face1 = tmparea->tmpfaces; face1; face1 = face1->next[side1])
 {

  side1 = face1->frontarea != tmparea;

  if (face1->faceflags & FACE_LADDER)
  {
   plane = &mapplanes[face1->planenum];

   if (DotProduct(plane->normal, normal) > -0.1)
   {
    foundladderface = 1;

    for (i = 0; i < face1->winding->numpoints; i++)
    {
     if (face1->winding->p[i][2] < lowestpoint[2])
     {
      VectorCopy(face1->winding->p[i], lowestpoint);
     }
    }
   }
  }
  else if (face1->faceflags & FACE_GROUND)
  {
   foundgroundface = 1;
  }
 }

 if ((!foundladderface) || (!foundgroundface)) return tmpnode;

 for (face1 = tmparea->tmpfaces; face1; face1 = face1->next[side1])
 {

  side1 = face1->frontarea != tmparea;

  if (!(face1->faceflags & FACE_GROUND)) continue;

  plane = &mapplanes[face1->planenum];

  dist = DotProduct(plane->normal, lowestpoint) - plane->dist;

  if (dist > -1 && dist < 1)
  {
   return tmpnode;
  }
 }

 dist = DotProduct(normal, lowestpoint);
 planenum = FindFloatPlane(normal, dist);

 w = AAS_SplitWinding(tmparea, planenum);
 if (!w) return tmpnode;
 FreeWinding(w);

 qprintf("\r%6d", ++numladdersubdivisions);

 AAS_SplitArea(tmparea, planenum, &frontarea, &backarea);

 tmpnode->tmparea = ((void*)0);
 tmpnode->planenum = planenum;

 tmpnode1 = AAS_AllocTmpNode();
 tmpnode1->planenum = 0;
 tmpnode1->tmparea = frontarea;

 tmpnode2 = AAS_AllocTmpNode();
 tmpnode2->planenum = 0;
 tmpnode2->tmparea = backarea;

 tmpnode->children[0] = AAS_LadderSubdivideArea_r(tmpnode1);
 tmpnode->children[1] = AAS_LadderSubdivideArea_r(tmpnode2);

 AAS_RefreshLadderSubdividedTree_r(tmpaasworld.nodes, tmparea, tmpnode1, tmpnode2, planenum);

 return tmpnode;
}
