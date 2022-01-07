
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct software_node {struct property_entry* properties; } ;
struct property_entry {int dummy; } ;


 scalar_t__ IS_ERR (struct property_entry*) ;
 int PTR_ERR (struct property_entry*) ;
 struct property_entry* property_entries_dup (struct property_entry const*) ;

__attribute__((used)) static int
software_node_register_properties(struct software_node *node,
      const struct property_entry *properties)
{
 struct property_entry *props;

 props = property_entries_dup(properties);
 if (IS_ERR(props))
  return PTR_ERR(props);

 node->properties = props;

 return 0;
}
