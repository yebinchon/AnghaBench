
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * mdesc_node_match_f ;
typedef int * mdesc_node_info_rel_f ;
typedef int * mdesc_node_info_get_f ;
struct TYPE_2__ {int * node_match; int * rel_info; int * get_info; int * name; } ;


 TYPE_1__* md_node_ops_table ;
 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static void mdesc_get_node_ops(const char *node_name,
          mdesc_node_info_get_f *get_info_f,
          mdesc_node_info_rel_f *rel_info_f,
          mdesc_node_match_f *match_f)
{
 int i;

 if (get_info_f)
  *get_info_f = ((void*)0);

 if (rel_info_f)
  *rel_info_f = ((void*)0);

 if (match_f)
  *match_f = ((void*)0);

 if (!node_name)
  return;

 for (i = 0; md_node_ops_table[i].name != ((void*)0); i++) {
  if (strcmp(md_node_ops_table[i].name, node_name) == 0) {
   if (get_info_f)
    *get_info_f = md_node_ops_table[i].get_info;

   if (rel_info_f)
    *rel_info_f = md_node_ops_table[i].rel_info;

   if (match_f)
    *match_f = md_node_ops_table[i].node_match;

   break;
  }
 }
}
