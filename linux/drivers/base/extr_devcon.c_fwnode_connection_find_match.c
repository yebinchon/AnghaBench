
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;
typedef int devcon_match_fn_t ;


 void* fwnode_devcon_match (struct fwnode_handle*,char const*,void*,int ) ;
 void* fwnode_graph_devcon_match (struct fwnode_handle*,char const*,void*,int ) ;

void *fwnode_connection_find_match(struct fwnode_handle *fwnode,
       const char *con_id, void *data,
       devcon_match_fn_t match)
{
 void *ret;

 if (!fwnode || !match)
  return ((void*)0);

 ret = fwnode_graph_devcon_match(fwnode, con_id, data, match);
 if (ret)
  return ret;

 return fwnode_devcon_match(fwnode, con_id, data, match);
}
