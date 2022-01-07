
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;



__attribute__((used)) static inline void
copy_reg(const u64 *fr, u64 fnat, unsigned long *tr, unsigned long *tnat)
{
 u64 fslot, tslot, nat;
 *tr = *fr;
 fslot = ((unsigned long)fr >> 3) & 63;
 tslot = ((unsigned long)tr >> 3) & 63;
 *tnat &= ~(1UL << tslot);
 nat = (fnat >> fslot) & 1;
 *tnat |= (nat << tslot);
}
