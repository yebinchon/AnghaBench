
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 unsigned long MPX_BT_SIZE_BYTES_32 ;
 unsigned long MPX_BT_SIZE_BYTES_64 ;
 scalar_t__ is_64bit_mm (struct mm_struct*) ;

__attribute__((used)) static inline unsigned long mpx_bt_size_bytes(struct mm_struct *mm)
{
 if (is_64bit_mm(mm))
  return MPX_BT_SIZE_BYTES_64;
 else
  return MPX_BT_SIZE_BYTES_32;
}
