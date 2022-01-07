
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_node {int dummy; } ;
typedef int __be64 ;
struct TYPE_3__ {int size; int private; } ;


 int __va (int ) ;
 int be64_to_cpu (int const) ;
 struct device_node* of_find_node_by_path (char*) ;
 int * of_get_property (struct device_node*,char*,unsigned int*) ;
 int opal_kobj ;
 int pr_warn (char*,int) ;
 TYPE_1__ symbol_map_attr ;
 int sysfs_create_bin_file (int ,TYPE_1__*) ;

__attribute__((used)) static void opal_export_symmap(void)
{
 const __be64 *syms;
 unsigned int size;
 struct device_node *fw;
 int rc;

 fw = of_find_node_by_path("/ibm,opal/firmware");
 if (!fw)
  return;
 syms = of_get_property(fw, "symbol-map", &size);
 if (!syms || size != 2 * sizeof(__be64))
  return;


 symbol_map_attr.private = __va(be64_to_cpu(syms[0]));
 symbol_map_attr.size = be64_to_cpu(syms[1]);

 rc = sysfs_create_bin_file(opal_kobj, &symbol_map_attr);
 if (rc)
  pr_warn("Error %d creating OPAL symbols file\n", rc);
}
