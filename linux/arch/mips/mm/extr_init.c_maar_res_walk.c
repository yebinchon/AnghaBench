
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maar_walk_info {size_t num_cfg; struct maar_config* cfg; } ;
struct maar_config {int attrs; scalar_t__ upper; int lower; } ;


 int ALIGN (int ,unsigned int) ;
 scalar_t__ ALIGN_DOWN (int ,unsigned int) ;
 size_t ARRAY_SIZE (struct maar_config*) ;
 unsigned int BIT (scalar_t__) ;
 scalar_t__ MIPS_MAAR_ADDR_SHIFT ;
 int MIPS_MAAR_S ;
 int PFN_PHYS (unsigned long) ;
 int WARN_ON (int) ;

__attribute__((used)) static int maar_res_walk(unsigned long start_pfn, unsigned long nr_pages,
    void *data)
{
 struct maar_walk_info *wi = data;
 struct maar_config *cfg = &wi->cfg[wi->num_cfg];
 unsigned int maar_align;


 maar_align = BIT(MIPS_MAAR_ADDR_SHIFT + 4);


 cfg->lower = ALIGN(PFN_PHYS(start_pfn), maar_align);
 cfg->upper = ALIGN_DOWN(PFN_PHYS(start_pfn + nr_pages), maar_align) - 1;
 cfg->attrs = MIPS_MAAR_S;


 if (!WARN_ON(wi->num_cfg >= ARRAY_SIZE(wi->cfg)))
  wi->num_cfg++;

 return 0;
}
