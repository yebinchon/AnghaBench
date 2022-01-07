
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_bad_offset(int b_off)
{
 return b_off > 0x1ffff || b_off < -0x20000;
}
