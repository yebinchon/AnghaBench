
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long DR_GLOBAL_SLOWDOWN ;
 unsigned long __encode_dr7 (int,unsigned int,unsigned int) ;

unsigned long encode_dr7(int drnum, unsigned int len, unsigned int type)
{
 return __encode_dr7(drnum, len, type) | DR_GLOBAL_SLOWDOWN;
}
