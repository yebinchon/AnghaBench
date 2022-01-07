
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cpu_hw_events {int * ds_bts_vaddr; } ;
struct TYPE_4__ {int bts_buffer; } ;
struct TYPE_6__ {TYPE_1__ cpu_debug_buffers; } ;
struct TYPE_5__ {int bts; } ;


 int BTS_BUFFER_SIZE ;
 int cpu_hw_events ;
 int ds_clear_cea (void*,int ) ;
 int dsfree_pages (int *,int ) ;
 TYPE_3__* get_cpu_entry_area (int) ;
 struct cpu_hw_events* per_cpu_ptr (int *,int) ;
 TYPE_2__ x86_pmu ;

__attribute__((used)) static void release_bts_buffer(int cpu)
{
 struct cpu_hw_events *hwev = per_cpu_ptr(&cpu_hw_events, cpu);
 void *cea;

 if (!x86_pmu.bts)
  return;


 cea = &get_cpu_entry_area(cpu)->cpu_debug_buffers.bts_buffer;
 ds_clear_cea(cea, BTS_BUFFER_SIZE);
 dsfree_pages(hwev->ds_bts_vaddr, BTS_BUFFER_SIZE);
 hwev->ds_bts_vaddr = ((void*)0);
}
