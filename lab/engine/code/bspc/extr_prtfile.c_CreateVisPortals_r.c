
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ planenum; struct TYPE_5__** children; scalar_t__ detail_seperator; } ;
typedef TYPE_1__ node_t ;


 int MakeNodePortal (TYPE_1__*) ;
 scalar_t__ PLANENUM_LEAF ;
 int SplitNodePortals (TYPE_1__*) ;

void CreateVisPortals_r (node_t *node)
{


 if (node->planenum == PLANENUM_LEAF || node->detail_seperator )
  return;

 MakeNodePortal (node);
 SplitNodePortals (node);

 CreateVisPortals_r (node->children[0]);
 CreateVisPortals_r (node->children[1]);
}
