
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int MPX_BT_ENTRY_BYTES_32 ;
 int MPX_BT_ENTRY_BYTES_64 ;
 scalar_t__ is_64bit_mm (struct mm_struct*) ;

__attribute__((used)) static inline int bt_entry_size_bytes(struct mm_struct *mm)
{
 if (is_64bit_mm(mm))
  return MPX_BT_ENTRY_BYTES_64;
 else
  return MPX_BT_ENTRY_BYTES_32;
}
