
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int nvmem_cell ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int ENOENT ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (int*) ;
 int NVMEM_MASK ;
 int NVMEM_SHIFT ;
 int PTR_ERR (int*) ;
 struct device_node* dev_pm_opp_of_get_opp_desc_node (struct device*) ;
 struct device* get_cpu_device (int ) ;
 int kfree (int*) ;
 int nvmem_cell_put (int*) ;
 int* nvmem_cell_read (int*,size_t*) ;
 int of_device_is_compatible (struct device_node*,char*) ;
 int of_node_put (struct device_node*) ;
 int* of_nvmem_cell_get (struct device_node*,int *) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int sun50i_cpufreq_get_efuse(u32 *versions)
{
 struct nvmem_cell *speedbin_nvmem;
 struct device_node *np;
 struct device *cpu_dev;
 u32 *speedbin, efuse_value;
 size_t len;
 int ret;

 cpu_dev = get_cpu_device(0);
 if (!cpu_dev)
  return -ENODEV;

 np = dev_pm_opp_of_get_opp_desc_node(cpu_dev);
 if (!np)
  return -ENOENT;

 ret = of_device_is_compatible(np,
          "allwinner,sun50i-h6-operating-points");
 if (!ret) {
  of_node_put(np);
  return -ENOENT;
 }

 speedbin_nvmem = of_nvmem_cell_get(np, ((void*)0));
 of_node_put(np);
 if (IS_ERR(speedbin_nvmem)) {
  if (PTR_ERR(speedbin_nvmem) != -EPROBE_DEFER)
   pr_err("Could not get nvmem cell: %ld\n",
          PTR_ERR(speedbin_nvmem));
  return PTR_ERR(speedbin_nvmem);
 }

 speedbin = nvmem_cell_read(speedbin_nvmem, &len);
 nvmem_cell_put(speedbin_nvmem);
 if (IS_ERR(speedbin))
  return PTR_ERR(speedbin);

 efuse_value = (*speedbin >> NVMEM_SHIFT) & NVMEM_MASK;
 switch (efuse_value) {
 case 0b0001:
  *versions = 1;
  break;
 case 0b0011:
  *versions = 2;
  break;
 default:




  *versions = 0;
  break;
 }

 kfree(speedbin);
 return 0;
}
