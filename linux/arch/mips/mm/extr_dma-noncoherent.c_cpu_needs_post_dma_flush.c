
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;





 int boot_cpu_type () ;
 int cpu_has_maar ;

__attribute__((used)) static inline bool cpu_needs_post_dma_flush(struct device *dev)
{
 switch (boot_cpu_type()) {
 case 129:
 case 128:
 case 130:
  return 1;
 default:





  return cpu_has_maar;
 }
}
