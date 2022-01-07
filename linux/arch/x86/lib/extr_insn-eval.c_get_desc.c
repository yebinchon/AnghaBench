
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ldt_struct {unsigned short nr_entries; struct desc_struct* entries; } ;
struct desc_struct {int dummy; } ;
struct desc_ptr {unsigned long size; scalar_t__ address; int member_1; int member_0; } ;
struct TYPE_6__ {TYPE_2__* active_mm; } ;
struct TYPE_4__ {int lock; struct ldt_struct* ldt; } ;
struct TYPE_5__ {TYPE_1__ context; } ;


 unsigned short SEGMENT_LDT ;
 unsigned short SEGMENT_RPL_MASK ;
 unsigned short SEGMENT_TI_MASK ;
 TYPE_3__* current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int native_store_gdt (struct desc_ptr*) ;

__attribute__((used)) static bool get_desc(struct desc_struct *out, unsigned short sel)
{
 struct desc_ptr gdt_desc = {0, 0};
 unsigned long desc_base;
 native_store_gdt(&gdt_desc);
 desc_base = sel & ~(SEGMENT_RPL_MASK | SEGMENT_TI_MASK);

 if (desc_base > gdt_desc.size)
  return 0;

 *out = *(struct desc_struct *)(gdt_desc.address + desc_base);
 return 1;
}
