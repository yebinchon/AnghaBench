
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 unsigned long MPX_BD_ENTRY_VALID_FLAG ;
 scalar_t__ is_64bit_mm (struct mm_struct*) ;

__attribute__((used)) static unsigned long mpx_bd_entry_to_bt_addr(struct mm_struct *mm,
          unsigned long bd_entry)
{
 unsigned long bt_addr = bd_entry;
 int align_to_bytes;



 bt_addr &= ~MPX_BD_ENTRY_VALID_FLAG;






 if (is_64bit_mm(mm))
  align_to_bytes = 8;
 else
  align_to_bytes = 4;
 bt_addr &= ~(align_to_bytes-1);
 return bt_addr;
}
