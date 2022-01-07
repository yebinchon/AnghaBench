
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ lwNode ;
typedef int (* ListFreeFunc ) (TYPE_1__*) ;



void lwListFree( void *list, ListFreeFunc freefunc ){
 lwNode *node, *next;

 node = ( lwNode * ) list;
 while ( node ) {
  next = node->next;
  freefunc( node );
  node = next;
 }
}
