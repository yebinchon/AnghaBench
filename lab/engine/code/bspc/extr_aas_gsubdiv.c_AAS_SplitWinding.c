
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_6__ {int planenum; TYPE_2__* frontarea; struct TYPE_6__** next; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_7__ {TYPE_1__* tmpfaces; } ;
typedef TYPE_2__ tmp_area_t ;
struct TYPE_8__ {int dist; int normal; } ;
typedef TYPE_3__ plane_t ;


 int * BaseWindingForPlane (int ,int ) ;
 int ChopWindingInPlace (int **,int ,int ,int ) ;
 TYPE_3__* mapplanes ;

winding_t *AAS_SplitWinding(tmp_area_t *tmparea, int planenum)
{
 tmp_face_t *face;
 plane_t *plane;
 int side;
 winding_t *splitwinding;


 plane = &mapplanes[planenum];

 splitwinding = BaseWindingForPlane(plane->normal, plane->dist);

 for (face = tmparea->tmpfaces; face && splitwinding; face = face->next[side])
 {

  side = face->frontarea != tmparea;
  plane = &mapplanes[face->planenum ^ side];
  ChopWindingInPlace(&splitwinding, plane->normal, plane->dist, 0);
 }
 return splitwinding;
}
