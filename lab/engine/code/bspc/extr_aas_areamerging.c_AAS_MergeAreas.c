
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* frontarea; TYPE_2__* backarea; struct TYPE_6__** next; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_7__ {TYPE_1__* tmpfaces; scalar_t__ invalid; struct TYPE_7__* l_next; } ;
typedef TYPE_2__ tmp_area_t ;
struct TYPE_8__ {int nodes; TYPE_2__* areas; } ;


 int AAS_GroundArea (TYPE_2__*) ;
 int AAS_RefreshMergedTree_r (int ) ;
 scalar_t__ AAS_TryMergeFaceAreas (TYPE_1__*) ;
 int Log_Write (char*,...) ;
 int qprintf (char*,...) ;
 TYPE_3__ tmpaasworld ;

void AAS_MergeAreas(void)
{
 int side, nummerges, merges, groundfirst;
 tmp_area_t *tmparea, *othertmparea;
 tmp_face_t *face;

 nummerges = 0;
 Log_Write("AAS_MergeAreas\r\n");
 qprintf("%6d areas merged", 1);

 groundfirst = 1;

 while(1)
 {



  merges = 0;

  for (tmparea = tmpaasworld.areas; tmparea; tmparea = tmparea->l_next)
  {

   if (tmparea->invalid)
   {
    continue;
   }

   if (groundfirst)
   {
    if (!AAS_GroundArea(tmparea)) continue;
   }

   for (face = tmparea->tmpfaces; face; face = face->next[side])
   {
    side = (face->frontarea != tmparea);

    if (face->frontarea && face->backarea)
    {

     if (face->frontarea == tmparea) othertmparea = face->backarea;
     else othertmparea = face->frontarea;

     if (groundfirst)
     {
      if (!AAS_GroundArea(othertmparea)) continue;
     }
     if (AAS_TryMergeFaceAreas(face))
     {
      qprintf("\r%6d", ++nummerges);
      merges++;
      break;
     }
    }
   }
  }
  if (!merges)
  {
   if (groundfirst) groundfirst = 0;
   else break;
  }
 }
 qprintf("\n");
 Log_Write("%6d areas merged\r\n", nummerges);

 AAS_RefreshMergedTree_r(tmpaasworld.nodes);
}
