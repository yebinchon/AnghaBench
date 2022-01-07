
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int of_device_is_available (struct device_node*) ;
 int of_device_is_compatible (struct device_node*,char*) ;
 scalar_t__ of_property_read_string (struct device_node*,char*,char const**) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;
 int pr_info (char*,int) ;
 int pr_warn (char*,...) ;

int riscv_of_processor_hartid(struct device_node *node)
{
 const char *isa;
 u32 hart;

 if (!of_device_is_compatible(node, "riscv")) {
  pr_warn("Found incompatible CPU\n");
  return -ENODEV;
 }

 if (of_property_read_u32(node, "reg", &hart)) {
  pr_warn("Found CPU without hart ID\n");
  return -ENODEV;
 }

 if (!of_device_is_available(node)) {
  pr_info("CPU with hartid=%d is not available\n", hart);
  return -ENODEV;
 }

 if (of_property_read_string(node, "riscv,isa", &isa)) {
  pr_warn("CPU with hartid=%d has no \"riscv,isa\" property\n", hart);
  return -ENODEV;
 }
 if (isa[0] != 'r' || isa[1] != 'v') {
  pr_warn("CPU with hartid=%d has an invalid ISA of \"%s\"\n", hart, isa);
  return -ENODEV;
 }

 return hart;
}
