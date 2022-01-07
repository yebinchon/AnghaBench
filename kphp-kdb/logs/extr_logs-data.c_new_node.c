
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node ;


 int * dl_malloc0 (int) ;

inline node *new_node (void) {
  return dl_malloc0 (sizeof (node));
}
