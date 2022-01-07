
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
typedef int aas_plane_t ;
struct TYPE_8__ {size_t planenum; int* children; } ;
typedef TYPE_1__ aas_node_t ;
struct TYPE_9__ {int nodenum; } ;
typedef TYPE_2__ aas_linkstack_t ;
struct TYPE_10__ {int entnum; int areanum; struct TYPE_10__* prev_ent; struct TYPE_10__* next_ent; struct TYPE_10__* prev_area; struct TYPE_10__* next_area; } ;
typedef TYPE_3__ aas_link_t ;
struct TYPE_12__ {int * planes; TYPE_1__* nodes; TYPE_3__** arealinkedentities; int loaded; } ;
struct TYPE_11__ {int (* Print ) (int ,char*) ;} ;


 TYPE_3__* AAS_AllocAASLink () ;
 int AAS_BoxOnPlaneSide2 (int ,int ,int *) ;
 int PRT_ERROR ;
 TYPE_5__ aasworld ;
 TYPE_4__ botimport ;
 int stub1 (int ,char*) ;
 int stub2 (int ,char*) ;
 int stub3 (int ,char*) ;

aas_link_t *AAS_AASLinkEntity(vec3_t absmins, vec3_t absmaxs, int entnum)
{
 int side, nodenum;
 aas_linkstack_t linkstack[128];
 aas_linkstack_t *lstack_p;
 aas_node_t *aasnode;
 aas_plane_t *plane;
 aas_link_t *link, *areas;

 if (!aasworld.loaded)
 {
  botimport.Print(PRT_ERROR, "AAS_LinkEntity: aas not loaded\n");
  return ((void*)0);
 }

 areas = ((void*)0);

 lstack_p = linkstack;


 lstack_p->nodenum = 1;
 lstack_p++;

 while (1)
 {

  lstack_p--;


  if (lstack_p < linkstack) break;

  nodenum = lstack_p->nodenum;

  if (nodenum < 0)
  {


   for (link = aasworld.arealinkedentities[-nodenum]; link; link = link->next_ent)
   {
    if (link->entnum == entnum) break;
   }
   if (link) continue;

   link = AAS_AllocAASLink();
   if (!link) return areas;
   link->entnum = entnum;
   link->areanum = -nodenum;

   link->prev_area = ((void*)0);
   link->next_area = areas;
   if (areas) areas->prev_area = link;
   areas = link;

   link->prev_ent = ((void*)0);
   link->next_ent = aasworld.arealinkedentities[-nodenum];
   if (aasworld.arealinkedentities[-nodenum])
     aasworld.arealinkedentities[-nodenum]->prev_ent = link;
   aasworld.arealinkedentities[-nodenum] = link;

   continue;
  }

  if (!nodenum) continue;

  aasnode = &aasworld.nodes[nodenum];

  plane = &aasworld.planes[aasnode->planenum];

  side = AAS_BoxOnPlaneSide2(absmins, absmaxs, plane);

  if (side & 1)
  {
   lstack_p->nodenum = aasnode->children[0];
   lstack_p++;
  }
  if (lstack_p >= &linkstack[127])
  {
   botimport.Print(PRT_ERROR, "AAS_LinkEntity: stack overflow\n");
   break;
  }

  if (side & 2)
  {
   lstack_p->nodenum = aasnode->children[1];
   lstack_p++;
  }
  if (lstack_p >= &linkstack[127])
  {
   botimport.Print(PRT_ERROR, "AAS_LinkEntity: stack overflow\n");
   break;
  }
 }
 return areas;
}
