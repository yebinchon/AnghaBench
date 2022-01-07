
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ planenum; struct TYPE_4__** children; scalar_t__ detail_seperator; } ;
typedef TYPE_1__ node_t ;


 int FinishVisPortals2_r (TYPE_1__*) ;
 scalar_t__ PLANENUM_LEAF ;

void FinishVisPortals_r (node_t *node)
{
 if (node->planenum == PLANENUM_LEAF)
  return;

 if (node->detail_seperator)
 {
  FinishVisPortals2_r (node);
  return;
 }

 FinishVisPortals_r (node->children[0]);
 FinishVisPortals_r (node->children[1]);
}
