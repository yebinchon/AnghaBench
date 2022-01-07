
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_3__ {scalar_t__ n_aliases; } ;
struct TYPE_4__ {TYPE_1__ dcache; } ;


 TYPE_2__ boot_cpu_data ;
 int cacheop_on_each_cpu (int ,struct mm_struct*,int) ;
 int local_flush_cache_dup_mm ;

void flush_cache_dup_mm(struct mm_struct *mm)
{
 if (boot_cpu_data.dcache.n_aliases == 0)
  return;

 cacheop_on_each_cpu(local_flush_cache_dup_mm, mm, 1);
}
