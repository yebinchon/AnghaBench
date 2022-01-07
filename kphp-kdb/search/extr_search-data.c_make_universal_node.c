
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int query_node_t ;


 int * new_query_node (int ) ;
 int qn_true ;

__attribute__((used)) static query_node_t *make_universal_node (void) {
  return new_query_node (qn_true);






}
