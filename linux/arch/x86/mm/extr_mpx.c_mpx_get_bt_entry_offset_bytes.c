
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 unsigned long MPX_BT_NR_ENTRIES_32 ;
 unsigned long MPX_BT_NR_ENTRIES_64 ;
 unsigned long bt_entry_size_bytes (struct mm_struct*) ;
 scalar_t__ is_64bit_mm (struct mm_struct*) ;

__attribute__((used)) static unsigned long mpx_get_bt_entry_offset_bytes(struct mm_struct *mm,
  unsigned long addr)
{
 unsigned long bt_table_nr_entries;
 unsigned long offset = addr;

 if (is_64bit_mm(mm)) {

  offset >>= 3;
  bt_table_nr_entries = MPX_BT_NR_ENTRIES_64;
 } else {

  offset >>= 2;
  bt_table_nr_entries = MPX_BT_NR_ENTRIES_32;
 }
 offset &= (bt_table_nr_entries-1);




 offset *= bt_entry_size_bytes(mm);
 return offset;
}
