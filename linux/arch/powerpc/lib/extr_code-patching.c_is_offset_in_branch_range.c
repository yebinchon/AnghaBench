
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool is_offset_in_branch_range(long offset)
{
 return (offset >= -0x2000000 && offset <= 0x1fffffc && !(offset & 0x3));
}
