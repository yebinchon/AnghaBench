
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
struct TYPE_12__ {size_t planenum; TYPE_1__* winding; int num; } ;
typedef TYPE_2__ tmp_face_t ;
struct TYPE_13__ {int dist; int normal; } ;
typedef TYPE_3__ plane_t ;


 TYPE_1__* AddWindingPoint (TYPE_1__*,int ,int) ;
 int Error (char*,int ) ;
 int FreeWinding (TYPE_1__*) ;
 scalar_t__ PointOnWinding (TYPE_1__*,int ,int ,int ,int*) ;
 TYPE_3__* mapplanes ;

int AAS_MeltFaceWinding(tmp_face_t *face1, tmp_face_t *face2)
{
 int i, n;
 int splits = 0;
 winding_t *w2, *neww;
 plane_t *plane1;





 w2 = face2->winding;
 plane1 = &mapplanes[face1->planenum];
 for (i = 0; i < w2->numpoints; i++)
 {
  if (PointOnWinding(face1->winding, plane1->normal, plane1->dist, w2->p[i], &n))
  {
   neww = AddWindingPoint(face1->winding, w2->p[i], n);
   FreeWinding(face1->winding);
   face1->winding = neww;

   splits++;
  }
 }
 return splits;
}
