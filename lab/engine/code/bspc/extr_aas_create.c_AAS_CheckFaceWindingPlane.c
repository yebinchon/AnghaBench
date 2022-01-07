
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int winding_t ;
typedef scalar_t__* vec3_t ;
struct TYPE_5__ {size_t planenum; int * winding; int num; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_6__ {scalar_t__* normal; scalar_t__ dist; } ;
typedef TYPE_2__ plane_t ;


 float DotProduct (scalar_t__*,scalar_t__*) ;
 int FreeWinding (int *) ;
 int Log_Write (char*,int ) ;
 void* ReverseWinding (int *) ;
 int VectorInverse (scalar_t__*) ;
 int WindingPlane (int *,scalar_t__*,float*) ;
 double fabs (scalar_t__) ;
 TYPE_2__* mapplanes ;

void AAS_CheckFaceWindingPlane(tmp_face_t *face)
{
 float dist, sign1, sign2;
 vec3_t normal;
 plane_t *plane;
 winding_t *w;


 WindingPlane(face->winding, normal, &dist);
 plane = &mapplanes[face->planenum];

 sign1 = DotProduct(plane->normal, normal);

 if (fabs(dist - plane->dist) > 0.4 ||
   fabs(normal[0] - plane->normal[0]) > 0.0001 ||
   fabs(normal[1] - plane->normal[1]) > 0.0001 ||
   fabs(normal[2] - plane->normal[2]) > 0.0001)
 {
  VectorInverse(normal);
  dist = -dist;
  if (fabs(dist - plane->dist) > 0.4 ||
    fabs(normal[0] - plane->normal[0]) > 0.0001 ||
    fabs(normal[1] - plane->normal[1]) > 0.0001 ||
    fabs(normal[2] - plane->normal[2]) > 0.0001)
  {
   Log_Write("AAS_CheckFaceWindingPlane: face %d winding plane unequal to face plane\r\n",
         face->num);

   sign2 = DotProduct(plane->normal, normal);
   if ((sign1 < 0 && sign2 > 0) ||
     (sign1 > 0 && sign2 < 0))
   {
    Log_Write("AAS_CheckFaceWindingPlane: face %d winding reversed\r\n",
         face->num);
    w = face->winding;
    face->winding = ReverseWinding(w);
    FreeWinding(w);
   }
  }
  else
  {
   Log_Write("AAS_CheckFaceWindingPlane: face %d winding reversed\r\n",
         face->num);
   w = face->winding;
   face->winding = ReverseWinding(w);
   FreeWinding(w);
  }
 }
}
