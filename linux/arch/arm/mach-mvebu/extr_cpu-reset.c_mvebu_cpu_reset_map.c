
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct device_node {int full_name; } ;


 int EBUSY ;
 int ENOENT ;
 int ENOMEM ;
 int cpu_reset_base ;
 int cpu_reset_size ;
 int ioremap (int ,int ) ;
 scalar_t__ of_address_to_resource (struct device_node*,int,struct resource*) ;
 int pr_err (char*) ;
 int release_mem_region (int ,int ) ;
 int request_mem_region (int ,int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int mvebu_cpu_reset_map(struct device_node *np, int res_idx)
{
 struct resource res;

 if (of_address_to_resource(np, res_idx, &res)) {
  pr_err("unable to get resource\n");
  return -ENOENT;
 }

 if (!request_mem_region(res.start, resource_size(&res),
    np->full_name)) {
  pr_err("unable to request region\n");
  return -EBUSY;
 }

 cpu_reset_base = ioremap(res.start, resource_size(&res));
 if (!cpu_reset_base) {
  pr_err("unable to map registers\n");
  release_mem_region(res.start, resource_size(&res));
  return -ENOMEM;
 }

 cpu_reset_size = resource_size(&res);

 return 0;
}
