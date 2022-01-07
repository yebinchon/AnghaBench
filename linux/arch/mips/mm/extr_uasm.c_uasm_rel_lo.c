
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int uasm_rel_lo(long val)
{
 return ((val & 0xffff) ^ 0x8000) - 0x8000;
}
