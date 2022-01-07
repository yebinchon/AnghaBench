
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;
struct device_connection {int fwnode; } ;
typedef void* (* devcon_match_fn_t ) (struct device_connection*,int,void*) ;


 scalar_t__ IS_ERR (int ) ;
 int fwnode_find_reference (struct fwnode_handle*,char const*,int) ;
 int fwnode_handle_put (int ) ;

__attribute__((used)) static void *
fwnode_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
      void *data, devcon_match_fn_t match)
{
 struct device_connection con = { };
 void *ret;
 int i;

 for (i = 0; ; i++) {
  con.fwnode = fwnode_find_reference(fwnode, con_id, i);
  if (IS_ERR(con.fwnode))
   break;

  ret = match(&con, -1, data);
  fwnode_handle_put(con.fwnode);
  if (ret)
   return ret;
 }

 return ((void*)0);
}
