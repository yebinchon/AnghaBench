
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int query_t ;
typedef int condition_t ;


 int CONDITION_FALSE ;
 int CONDITION_TRUE ;
 int build_condition (int *,int ,int ,int) ;

inline condition_t build_condition_from_query (query_t *Q, int opt_level) {
  return build_condition (Q, CONDITION_TRUE, CONDITION_FALSE, opt_level);
}
