
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_node {int x; struct diff_node* prev; } ;


 int PTRSIZE ;
 struct diff_node* dyn_alloc (int,int ) ;

__attribute__((used)) static struct diff_node *diff_node_alloc (int x, struct diff_node *prev) {
  struct diff_node *p = dyn_alloc (sizeof (struct diff_node), PTRSIZE);
  if (p == ((void*)0)) { return p; }
  p->x = x;
  p->prev = prev;
  return p;
}
