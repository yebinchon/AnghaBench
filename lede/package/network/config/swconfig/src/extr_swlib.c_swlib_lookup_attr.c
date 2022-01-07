
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {struct switch_attr* vlan_ops; struct switch_attr* port_ops; struct switch_attr* ops; } ;
struct switch_attr {struct switch_attr* next; int name; } ;
typedef enum swlib_attr_group { ____Placeholder_swlib_attr_group } swlib_attr_group ;





 int strcmp (char const*,int ) ;

struct switch_attr *swlib_lookup_attr(struct switch_dev *dev,
  enum swlib_attr_group atype, const char *name)
{
 struct switch_attr *head;

 if (!name || !dev)
  return ((void*)0);

 switch(atype) {
 case 130:
  head = dev->ops;
  break;
 case 129:
  head = dev->port_ops;
  break;
 case 128:
  head = dev->vlan_ops;
  break;
 }
 while(head) {
  if (!strcmp(name, head->name))
   return head;
  head = head->next;
 }

 return ((void*)0);
}
