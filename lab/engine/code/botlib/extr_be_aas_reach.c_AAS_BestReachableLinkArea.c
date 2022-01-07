
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int areanum; struct TYPE_3__* next_area; } ;
typedef TYPE_1__ aas_link_t ;


 scalar_t__ AAS_AreaGrounded (int) ;
 scalar_t__ AAS_AreaReachability (int) ;
 scalar_t__ AAS_AreaSwim (int) ;

int AAS_BestReachableLinkArea(aas_link_t *areas)
{
 aas_link_t *link;

 for (link = areas; link; link = link->next_area)
 {
  if (AAS_AreaGrounded(link->areanum) || AAS_AreaSwim(link->areanum))
  {
   return link->areanum;
  }
 }

 for (link = areas; link; link = link->next_area)
 {
  if (link->areanum) return link->areanum;


  if (AAS_AreaReachability(link->areanum))
   return link->areanum;
 }
 return 0;
}
