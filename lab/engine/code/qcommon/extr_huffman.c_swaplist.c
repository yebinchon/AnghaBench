
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* prev; } ;
typedef TYPE_1__ node_t ;



__attribute__((used)) static void swaplist(node_t *node1, node_t *node2) {
 node_t *par1;

 par1 = node1->next;
 node1->next = node2->next;
 node2->next = par1;

 par1 = node1->prev;
 node1->prev = node2->prev;
 node2->prev = par1;

 if (node1->next == node1) {
  node1->next = node2;
 }
 if (node2->next == node2) {
  node2->next = node1;
 }
 if (node1->next) {
  node1->next->prev = node1;
 }
 if (node2->next) {
  node2->next->prev = node2;
 }
 if (node1->prev) {
  node1->prev->next = node1;
 }
 if (node2->prev) {
  node2->prev->next = node2;
 }
}
