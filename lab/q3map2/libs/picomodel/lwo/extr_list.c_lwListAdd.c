
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct TYPE_2__* prev; struct TYPE_2__* next; } ;
typedef TYPE_1__ lwNode ;



void lwListAdd( void **list, void *node ){
 lwNode *head, *tail;

 head = *( ( lwNode ** ) list );
 if ( !head ) {
  *list = node;
  return;
 }
 while ( head ) {
  tail = head;
  head = head->next;
 }
 tail->next = ( lwNode * ) node;
 ( ( lwNode * ) node )->prev = tail;
}
