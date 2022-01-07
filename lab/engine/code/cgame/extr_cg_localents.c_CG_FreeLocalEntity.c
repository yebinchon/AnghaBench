
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; TYPE_1__* prev; } ;
typedef TYPE_2__ localEntity_t ;
struct TYPE_5__ {TYPE_2__* next; } ;


 int CG_Error (char*) ;
 TYPE_2__* cg_freeLocalEntities ;

void CG_FreeLocalEntity( localEntity_t *le ) {
 if ( !le->prev ) {
  CG_Error( "CG_FreeLocalEntity: not active" );
 }


 le->prev->next = le->next;
 le->next->prev = le->prev;


 le->next = cg_freeLocalEntities;
 cg_freeLocalEntities = le;
}
