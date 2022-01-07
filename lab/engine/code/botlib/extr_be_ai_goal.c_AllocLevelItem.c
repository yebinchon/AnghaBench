
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ levelitem_t ;
struct TYPE_7__ {int (* Print ) (int ,char*) ;} ;


 int Com_Memset (TYPE_1__*,int ,int) ;
 int PRT_FATAL ;
 TYPE_3__ botimport ;
 TYPE_1__* freelevelitems ;
 int stub1 (int ,char*) ;

levelitem_t *AllocLevelItem(void)
{
 levelitem_t *li;

 li = freelevelitems;
 if (!li)
 {
  botimport.Print(PRT_FATAL, "out of level items\n");
  return ((void*)0);
 }

 freelevelitems = freelevelitems->next;
 Com_Memset(li, 0, sizeof(levelitem_t));
 return li;
}
