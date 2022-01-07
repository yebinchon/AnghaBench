
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fwnode_handle {int dummy; } ;
struct fwnode_endpoint {scalar_t__ port; scalar_t__ id; int member_0; } ;


 unsigned long FWNODE_GRAPH_DEVICE_DISABLED ;
 unsigned long FWNODE_GRAPH_ENDPOINT_NEXT ;
 int fwnode_device_is_available (struct fwnode_handle*) ;
 struct fwnode_handle* fwnode_graph_get_next_endpoint (struct fwnode_handle const*,struct fwnode_handle*) ;
 struct fwnode_handle* fwnode_graph_get_remote_port_parent (struct fwnode_handle*) ;
 int fwnode_graph_parse_endpoint (struct fwnode_handle*,struct fwnode_endpoint*) ;
 struct fwnode_handle* fwnode_handle_get (struct fwnode_handle*) ;
 int fwnode_handle_put (struct fwnode_handle*) ;

struct fwnode_handle *
fwnode_graph_get_endpoint_by_id(const struct fwnode_handle *fwnode,
    u32 port, u32 endpoint, unsigned long flags)
{
 struct fwnode_handle *ep = ((void*)0), *best_ep = ((void*)0);
 unsigned int best_ep_id = 0;
 bool endpoint_next = flags & FWNODE_GRAPH_ENDPOINT_NEXT;
 bool enabled_only = !(flags & FWNODE_GRAPH_DEVICE_DISABLED);

 while ((ep = fwnode_graph_get_next_endpoint(fwnode, ep))) {
  struct fwnode_endpoint fwnode_ep = { 0 };
  int ret;

  if (enabled_only) {
   struct fwnode_handle *dev_node;
   bool available;

   dev_node = fwnode_graph_get_remote_port_parent(ep);
   available = fwnode_device_is_available(dev_node);
   fwnode_handle_put(dev_node);
   if (!available)
    continue;
  }

  ret = fwnode_graph_parse_endpoint(ep, &fwnode_ep);
  if (ret < 0)
   continue;

  if (fwnode_ep.port != port)
   continue;

  if (fwnode_ep.id == endpoint)
   return ep;

  if (!endpoint_next)
   continue;






  if (fwnode_ep.id < endpoint ||
      (best_ep && best_ep_id < fwnode_ep.id))
   continue;

  fwnode_handle_put(best_ep);
  best_ep = fwnode_handle_get(ep);
  best_ep_id = fwnode_ep.id;
 }

 return best_ep;
}
