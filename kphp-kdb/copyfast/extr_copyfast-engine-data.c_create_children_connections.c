
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;


 int add_child (struct node) ;

void create_children_connections (struct node *children, int children_num) {
  int i;
  for (i = 0; i < children_num; i++) {
    add_child (children[i]);
  }
}
