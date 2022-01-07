
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flush_data {unsigned long addr1; unsigned long addr2; } ;


 int ipi_flush_icache_range ;
 int on_each_cpu (int ,struct flush_data*,int) ;

void flush_icache_range(unsigned long start, unsigned long end)
{
 struct flush_data fd = {
  .addr1 = start,
  .addr2 = end,
 };
 on_each_cpu(ipi_flush_icache_range, &fd, 1);
}
