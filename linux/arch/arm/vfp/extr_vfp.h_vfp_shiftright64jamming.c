
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;



__attribute__((used)) static inline u64 vfp_shiftright64jamming(u64 val, unsigned int shift)
{
 if (shift) {
  if (shift < 64)
   val = val >> shift | ((val << (64 - shift)) != 0);
  else
   val = val != 0;
 }
 return val;
}
