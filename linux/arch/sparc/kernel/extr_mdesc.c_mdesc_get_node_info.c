
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union md_node_info {int dummy; } md_node_info ;
typedef int u64 ;
struct mdesc_handle {int dummy; } ;
typedef int (* mdesc_node_info_get_f ) (struct mdesc_handle*,int ,union md_node_info*) ;


 int EINVAL ;
 int MDESC_NODE_NULL ;
 int mdesc_get_node_ops (char const*,int (*) (struct mdesc_handle*,int ,union md_node_info*),int *,int *) ;
 int pr_err (char*,char const*) ;

int mdesc_get_node_info(struct mdesc_handle *hp, u64 node,
   const char *node_name, union md_node_info *node_info)
{
 mdesc_node_info_get_f get_info_func;
 int rv;

 if (hp == ((void*)0) || node == MDESC_NODE_NULL ||
     node_name == ((void*)0) || node_info == ((void*)0))
  return -EINVAL;


 mdesc_get_node_ops(node_name, &get_info_func, ((void*)0), ((void*)0));


 if (get_info_func == ((void*)0)) {
  pr_err("MD: %s node is not supported\n", node_name);
  return -EINVAL;
 }

 rv = get_info_func(hp, node, node_info);
 if (rv != 0) {
  pr_err("MD: Cannot find 1 or more required match properties for %s node.\n",
         node_name);
  return -1;
 }

 return 0;
}
