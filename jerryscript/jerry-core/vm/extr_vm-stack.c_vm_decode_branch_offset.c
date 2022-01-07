
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int JERRY_ASSERT (int) ;

__attribute__((used)) static uint32_t
vm_decode_branch_offset (uint8_t *branch_offset_p,
                         uint32_t length)
{
  uint32_t branch_offset = *branch_offset_p;

  JERRY_ASSERT (length >= 1 && length <= 3);

  switch (length)
  {
    case 3:
    {
      branch_offset <<= 8;
      branch_offset |= *(++branch_offset_p);

    }
    case 2:
    {
      branch_offset <<= 8;
      branch_offset |= *(++branch_offset_p);
      break;
    }
  }

  return branch_offset;
}
