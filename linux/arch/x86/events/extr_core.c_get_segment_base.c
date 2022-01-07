
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ldt_struct {unsigned int nr_entries; struct desc_struct* entries; } ;
struct desc_struct {int dummy; } ;
struct TYPE_8__ {TYPE_2__* active_mm; } ;
struct TYPE_7__ {int gdt; } ;
struct TYPE_5__ {int ldt; } ;
struct TYPE_6__ {TYPE_1__ context; } ;


 unsigned int GDT_ENTRIES ;
 struct ldt_struct* READ_ONCE (int ) ;
 unsigned int SEGMENT_LDT ;
 unsigned int SEGMENT_TI_MASK ;
 TYPE_4__* current ;
 TYPE_3__ gdt_page ;
 unsigned long get_desc_base (struct desc_struct*) ;
 struct desc_struct* raw_cpu_ptr (int ) ;

__attribute__((used)) static unsigned long get_segment_base(unsigned int segment)
{
 struct desc_struct *desc;
 unsigned int idx = segment >> 3;

 if ((segment & SEGMENT_TI_MASK) == SEGMENT_LDT) {
  return 0;

 } else {
  if (idx >= GDT_ENTRIES)
   return 0;

  desc = raw_cpu_ptr(gdt_page.gdt) + idx;
 }

 return get_desc_base(desc);
}
