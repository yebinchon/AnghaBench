
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


struct TYPE_18__ {TYPE_3__* tmparea; scalar_t__* children; scalar_t__ planenum; } ;
typedef TYPE_1__ tmp_node_t ;
struct TYPE_19__ {int planenum; int faceflags; scalar_t__ aasfacenum; int winding; } ;
typedef TYPE_2__ tmp_face_t ;
struct TYPE_20__ {int presencetype; int modelnum; int contents; int areanum; int * tmpfaces; } ;
typedef TYPE_3__ tmp_area_t ;
struct TYPE_21__ {int planenum; TYPE_5__** nodes; int winding; TYPE_2__* tmpface; struct TYPE_21__** next; } ;
typedef TYPE_4__ portal_t ;
struct TYPE_22__ {int contents; int expansionbboxes; int modelnum; TYPE_4__* portals; } ;
typedef TYPE_5__ node_t ;
struct TYPE_23__ {int allpresencetypes; } ;


 int AAS_AddFaceSideToArea (TYPE_2__*,int,TYPE_3__*) ;
 TYPE_3__* AAS_AllocTmpArea () ;
 TYPE_2__* AAS_AllocTmpFace () ;
 TYPE_1__* AAS_AllocTmpNode () ;
 int AAS_CheckArea (TYPE_3__*) ;
 int AAS_CheckFaceWindingPlane (TYPE_2__*) ;
 int AAS_FlipAreaFaces (TYPE_3__*) ;
 scalar_t__ AAS_GroundFace (TYPE_2__*) ;
 int AREACONTENTS_CLUSTERPORTAL ;
 int AREACONTENTS_DONOTENTER ;
 int AREACONTENTS_JUMPPAD ;
 int AREACONTENTS_LAVA ;
 int AREACONTENTS_MOVER ;
 int AREACONTENTS_NOTTEAM1 ;
 int AREACONTENTS_NOTTEAM2 ;
 int AREACONTENTS_SLIME ;
 int AREACONTENTS_TELEPORTER ;
 int AREACONTENTS_WATER ;
 int CONTENTS_CLUSTERPORTAL ;
 int CONTENTS_DONOTENTER ;
 int CONTENTS_JUMPPAD ;
 int CONTENTS_LADDER ;
 int CONTENTS_LAVA ;
 int CONTENTS_MOVER ;
 int CONTENTS_NOTTEAM1 ;
 int CONTENTS_NOTTEAM2 ;
 int CONTENTS_PLAYERCLIP ;
 int CONTENTS_SLIME ;
 int CONTENTS_SOLID ;
 int CONTENTS_TELEPORTER ;
 int CONTENTS_WATER ;
 int CopyWinding (int ) ;
 int FACE_GROUND ;
 int FACE_LADDER ;
 int FACE_LIQUID ;
 int FACE_LIQUIDSURFACE ;
 int FACE_SOLID ;
 int ReverseWinding (int ) ;
 TYPE_6__ cfg ;
 int qprintf (char*,int ) ;

tmp_node_t *AAS_CreateArea(node_t *node)
{
 int pside;
 int areafaceflags;
 portal_t *p;
 tmp_face_t *tmpface;
 tmp_area_t *tmparea;
 tmp_node_t *tmpnode;


 tmparea = AAS_AllocTmpArea();
 tmparea->tmpfaces = ((void*)0);

 areafaceflags = 0;

 for (p = node->portals; p; p = p->next[pside])
 {
  pside = (p->nodes[1] == node);



  if (p->tmpface)
  {

   AAS_AddFaceSideToArea(p->tmpface, 1, tmparea);
  }
  else
  {
   tmpface = AAS_AllocTmpFace();


   p->tmpface = tmpface;


   tmpface->planenum = p->planenum ^ pside;
   if (pside) tmpface->winding = ReverseWinding(p->winding);
   else tmpface->winding = CopyWinding(p->winding);





   if (p->nodes[!pside]->contents & (CONTENTS_SOLID | CONTENTS_PLAYERCLIP))
   {
    tmpface->faceflags |= FACE_SOLID;
   }


   else if (node->contents & (CONTENTS_WATER|CONTENTS_SLIME|CONTENTS_LAVA))
   {
    tmpface->faceflags |= FACE_LIQUID;

    if (!(p->nodes[!pside]->contents & (CONTENTS_WATER|CONTENTS_SLIME|CONTENTS_LAVA)))
    {
     tmpface->faceflags |= FACE_LIQUIDSURFACE;
    }
   }

   if ((p->nodes[pside]->contents & CONTENTS_LADDER) ||
     (p->nodes[!pside]->contents & CONTENTS_LADDER))
   {
    tmpface->faceflags |= FACE_LADDER;
   }

   if (AAS_GroundFace(tmpface))
   {
    tmpface->faceflags |= FACE_GROUND;
   }

   areafaceflags |= tmpface->faceflags;

   tmpface->aasfacenum = 0;

   AAS_AddFaceSideToArea(tmpface, 0, tmparea);
  }
 }
 qprintf("\r%6d", tmparea->areanum);

 tmparea->presencetype = ~node->expansionbboxes & cfg.allpresencetypes;

 tmparea->contents = 0;
 if (node->contents & CONTENTS_CLUSTERPORTAL) tmparea->contents |= AREACONTENTS_CLUSTERPORTAL;
 if (node->contents & CONTENTS_MOVER) tmparea->contents |= AREACONTENTS_MOVER;
 if (node->contents & CONTENTS_TELEPORTER) tmparea->contents |= AREACONTENTS_TELEPORTER;
 if (node->contents & CONTENTS_JUMPPAD) tmparea->contents |= AREACONTENTS_JUMPPAD;
 if (node->contents & CONTENTS_DONOTENTER) tmparea->contents |= AREACONTENTS_DONOTENTER;
 if (node->contents & CONTENTS_WATER) tmparea->contents |= AREACONTENTS_WATER;
 if (node->contents & CONTENTS_LAVA) tmparea->contents |= AREACONTENTS_LAVA;
 if (node->contents & CONTENTS_SLIME) tmparea->contents |= AREACONTENTS_SLIME;
 if (node->contents & CONTENTS_NOTTEAM1) tmparea->contents |= AREACONTENTS_NOTTEAM1;
 if (node->contents & CONTENTS_NOTTEAM2) tmparea->contents |= AREACONTENTS_NOTTEAM2;


 tmparea->modelnum = node->modelnum;

 AAS_FlipAreaFaces(tmparea);

 AAS_CheckArea(tmparea);

 tmpnode = AAS_AllocTmpNode();
 tmpnode->planenum = 0;
 tmpnode->children[0] = 0;
 tmpnode->children[1] = 0;
 tmpnode->tmparea = tmparea;

 return tmpnode;
}
