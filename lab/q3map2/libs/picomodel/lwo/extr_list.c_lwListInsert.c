
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* prev; struct TYPE_6__* next; } ;
typedef TYPE_1__ lwNode ;
typedef scalar_t__ (* ListCompareFunc ) (TYPE_1__*,TYPE_1__*) ;



void lwListInsert( void **vlist, void *vitem, ListCompareFunc compare ){
 lwNode **list, *item, *node, *prev;

 if ( !*vlist ) {
  *vlist = vitem;
  return;
 }

 list = ( lwNode ** ) vlist;
 item = ( lwNode * ) vitem;
 node = *list;
 prev = ((void*)0);

 while ( node ) {
  if ( 0 < compare( node, item ) ) {
   break;
  }
  prev = node;
  node = node->next;
 }

 if ( !prev ) {
  *list = item;
  node->prev = item;
  item->next = node;
 }
 else if ( !node ) {
  prev->next = item;
  item->prev = prev;
 }
 else {
  item->next = node;
  item->prev = prev;
  prev->next = item;
  node->prev = item;
 }
}
