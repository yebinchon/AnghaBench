
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {int node_sz; } ;
struct mdesc_handle {TYPE_1__ mdesc; } ;
struct mdesc_elem {scalar_t__ tag; int name_offset; } ;


 scalar_t__ MDESC_NODE_NULL ;
 scalar_t__ MD_NODE ;
 char* name_block (TYPE_1__*) ;
 struct mdesc_elem* node_block (TYPE_1__*) ;

const char *mdesc_node_name(struct mdesc_handle *hp, u64 node)
{
 struct mdesc_elem *ep, *base = node_block(&hp->mdesc);
 const char *names = name_block(&hp->mdesc);
 u64 last_node = hp->mdesc.node_sz / 16;

 if (node == MDESC_NODE_NULL || node >= last_node)
  return ((void*)0);

 ep = base + node;
 if (ep->tag != MD_NODE)
  return ((void*)0);

 return names + ep->name_offset;
}
