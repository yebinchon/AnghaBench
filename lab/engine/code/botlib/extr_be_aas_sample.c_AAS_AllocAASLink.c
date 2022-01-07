
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * prev_ent; struct TYPE_5__* next_ent; } ;
typedef TYPE_1__ aas_link_t ;
struct TYPE_7__ {TYPE_1__* freelinks; } ;
struct TYPE_6__ {int (* Print ) (int ,char*) ;} ;


 int PRT_FATAL ;
 TYPE_3__ aasworld ;
 scalar_t__ botDeveloper ;
 TYPE_2__ botimport ;
 int numaaslinks ;
 int stub1 (int ,char*) ;

aas_link_t *AAS_AllocAASLink(void)
{
 aas_link_t *link;

 link = aasworld.freelinks;
 if (!link)
 {

  if (botDeveloper)

  {
   botimport.Print(PRT_FATAL, "empty aas link heap\n");
  }
  return ((void*)0);
 }
 if (aasworld.freelinks) aasworld.freelinks = aasworld.freelinks->next_ent;
 if (aasworld.freelinks) aasworld.freelinks->prev_ent = ((void*)0);
 numaaslinks--;
 return link;
}
