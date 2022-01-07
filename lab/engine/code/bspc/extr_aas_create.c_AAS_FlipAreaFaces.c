
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_8__ {int planenum; int num; int winding; TYPE_1__* backarea; TYPE_3__* frontarea; struct TYPE_8__** next; } ;
typedef TYPE_2__ tmp_face_t ;
struct TYPE_9__ {int areanum; TYPE_2__* tmpfaces; } ;
typedef TYPE_3__ tmp_area_t ;
struct TYPE_10__ {scalar_t__* normal; scalar_t__ dist; } ;
typedef TYPE_4__ plane_t ;
struct TYPE_7__ {int areanum; } ;


 scalar_t__ DotProduct (scalar_t__*,scalar_t__*) ;
 int Error (char*,int ) ;
 int Log_Print (char*,int ,int ,int ,int ) ;
 int Log_Write (char*,int ,int ) ;
 int VectorAdd (scalar_t__*,scalar_t__*,scalar_t__*) ;
 int VectorScale (scalar_t__*,float,scalar_t__*) ;
 int WindingCenter (int ,scalar_t__*) ;
 int WindingPlane (int ,scalar_t__*,float*) ;
 double fabs (scalar_t__) ;
 TYPE_4__* mapplanes ;

void AAS_FlipAreaFaces(tmp_area_t *tmparea)
{
 int side;
 tmp_face_t *face;
 plane_t *plane;
 vec3_t wcenter, acenter = {0, 0, 0};

 float n;

 for (n = 0, face = tmparea->tmpfaces; face; face = face->next[side])
 {
  if (!face->frontarea) Error("face %d has no front area\n", face->num);

  side = face->frontarea != tmparea;
  WindingCenter(face->winding, wcenter);
  VectorAdd(acenter, wcenter, acenter);
  n++;
 }
 n = 1 / n;
 VectorScale(acenter, n, acenter);
 for (face = tmparea->tmpfaces; face; face = face->next[side])
 {

  side = face->frontarea != tmparea;

  plane = &mapplanes[face->planenum ^ side];

  if (DotProduct(plane->normal, acenter) - plane->dist < 0)
  {
   Log_Print("area %d face %d flipped: front area %d, back area %d\n", tmparea->areanum, face->num,
     face->frontarea ? face->frontarea->areanum : 0,
     face->backarea ? face->backarea->areanum : 0);






  }
 }
}
