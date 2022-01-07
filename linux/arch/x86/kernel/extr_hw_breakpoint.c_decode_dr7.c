
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DR_CONTROL_SHIFT ;
 int DR_CONTROL_SIZE ;
 int DR_ENABLE_SIZE ;

int decode_dr7(unsigned long dr7, int bpnum, unsigned *len, unsigned *type)
{
 int bp_info = dr7 >> (DR_CONTROL_SHIFT + bpnum * DR_CONTROL_SIZE);

 *len = (bp_info & 0xc) | 0x40;
 *type = (bp_info & 0x3) | 0x80;

 return (dr7 >> (bpnum * DR_ENABLE_SIZE)) & 0x3;
}
