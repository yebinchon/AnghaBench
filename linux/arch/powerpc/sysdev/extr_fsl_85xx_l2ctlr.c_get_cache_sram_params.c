
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sram_parameters {unsigned long long sram_offset; unsigned int sram_size; } ;


 int EINVAL ;
 scalar_t__ kstrtouint (int ,int ,unsigned int*) ;
 scalar_t__ kstrtoull (int ,int ,unsigned long long*) ;
 int sram_offset ;
 int sram_size ;

__attribute__((used)) static int get_cache_sram_params(struct sram_parameters *sram_params)
{
 unsigned long long addr;
 unsigned int size;

 if (!sram_size || (kstrtouint(sram_size, 0, &size) < 0))
  return -EINVAL;

 if (!sram_offset || (kstrtoull(sram_offset, 0, &addr) < 0))
  return -EINVAL;

 sram_params->sram_offset = addr;
 sram_params->sram_size = size;

 return 0;
}
