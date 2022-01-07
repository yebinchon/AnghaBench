
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int side_t ;
struct TYPE_5__ {struct TYPE_5__* next; int * side; } ;
typedef TYPE_1__ sideRef_t ;


 TYPE_1__* safe_malloc (int) ;

sideRef_t *AllocSideRef( side_t *side, sideRef_t *next ){
 sideRef_t *sideRef;



 if ( side == ((void*)0) ) {
  return next;
 }


 sideRef = safe_malloc( sizeof( *sideRef ) );
 sideRef->side = side;
 sideRef->next = next;
 return sideRef;
}
