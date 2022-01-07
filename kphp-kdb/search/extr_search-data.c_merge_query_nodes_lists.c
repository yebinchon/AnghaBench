
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_nodes_list {struct query_nodes_list* next; } ;



__attribute__((used)) static void merge_query_nodes_lists (struct query_nodes_list *p, struct query_nodes_list *q) {
  while (p->next) {
    p = p->next;
  }
  p->next = q;
}
