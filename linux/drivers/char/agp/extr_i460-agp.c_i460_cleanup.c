
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct aper_size_info_8 {int size_value; } ;
struct TYPE_4__ {int previous_size; } ;
struct TYPE_3__ {int lp_desc; } ;


 struct aper_size_info_8* A_SIZE_8 (int ) ;
 scalar_t__ I460_IO_PAGE_SHIFT ;
 scalar_t__ PAGE_SHIFT ;
 TYPE_2__* agp_bridge ;
 TYPE_1__ i460 ;
 int i460_write_agpsiz (int ) ;
 int kfree (int ) ;

__attribute__((used)) static void i460_cleanup (void)
{
 struct aper_size_info_8 *previous_size;

 previous_size = A_SIZE_8(agp_bridge->previous_size);
 i460_write_agpsiz(previous_size->size_value);

 if (I460_IO_PAGE_SHIFT > PAGE_SHIFT)
  kfree(i460.lp_desc);
}
