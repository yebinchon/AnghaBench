
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DR_CONTROL_SHIFT ;
 int DR_CONTROL_SIZE ;
 int DR_ENABLE_SIZE ;
 int DR_GLOBAL_ENABLE ;

__attribute__((used)) static inline unsigned long
__encode_dr7(int drnum, unsigned int len, unsigned int type)
{
 unsigned long bp_info;

 bp_info = (len | type) & 0xf;
 bp_info <<= (DR_CONTROL_SHIFT + drnum * DR_CONTROL_SIZE);
 bp_info |= (DR_GLOBAL_ENABLE << (drnum * DR_ENABLE_SIZE));

 return bp_info;
}
