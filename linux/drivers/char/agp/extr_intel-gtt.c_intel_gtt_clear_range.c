
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int scratch_page_dma; TYPE_1__* driver; } ;
struct TYPE_3__ {int (* write_entry ) (int ,unsigned int,int ) ;} ;


 TYPE_2__ intel_private ;
 int stub1 (int ,unsigned int,int ) ;
 int wmb () ;

void intel_gtt_clear_range(unsigned int first_entry, unsigned int num_entries)
{
 unsigned int i;

 for (i = first_entry; i < (first_entry + num_entries); i++) {
  intel_private.driver->write_entry(intel_private.scratch_page_dma,
        i, 0);
 }
 wmb();
}
