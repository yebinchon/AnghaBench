
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* frontarea; struct TYPE_7__** next; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_8__ {TYPE_1__* tmpfaces; scalar_t__ invalid; struct TYPE_8__* l_next; } ;
typedef TYPE_2__ tmp_area_t ;
struct TYPE_9__ {TYPE_2__* areas; } ;


 int AAS_CheckArea (TYPE_2__*) ;
 scalar_t__ AAS_TryMergeFaces (TYPE_1__*,TYPE_1__*) ;
 int Log_Write (char*,...) ;
 int qprintf (char*,...) ;
 TYPE_3__ tmpaasworld ;

void AAS_MergeAreaFaces(void)
{
 int num_facemerges = 0;
 int side1, side2, restart;
 tmp_area_t *tmparea, *lasttmparea;
 tmp_face_t *face1, *face2;

 Log_Write("AAS_MergeAreaFaces\r\n");
 qprintf("%6d face merges", num_facemerges);

 lasttmparea = tmpaasworld.areas;
 for (tmparea = tmpaasworld.areas; tmparea; tmparea = tmparea->l_next)
 {
  restart = 0;

  if (tmparea->invalid) continue;

  for (face1 = tmparea->tmpfaces; face1; face1 = face1->next[side1])
  {
   side1 = face1->frontarea != tmparea;
   for (face2 = face1->next[side1]; face2; face2 = face2->next[side2])
   {
    side2 = face2->frontarea != tmparea;

    if (AAS_TryMergeFaces(face1, face2))
    {

     restart = 1;
     num_facemerges++;
     qprintf("\r%6d", num_facemerges);
     AAS_CheckArea(tmparea);
     break;
    }
   }
   if (restart)
   {
    tmparea = lasttmparea;
    break;
   }
  }
  lasttmparea = tmparea;
 }
 qprintf("\n");
 Log_Write("%6d face merges\r\n", num_facemerges);
}
