
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int gcm_remain(unsigned int len)
{
 len &= 0xfU;
 return len ? 16 - len : 0;
}
