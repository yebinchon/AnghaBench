
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoe_atahdr {int lba0; int lba1; int lba2; int lba3; int lba4; int lba5; } ;
typedef int sector_t ;



__attribute__((used)) static inline void
put_lba(struct aoe_atahdr *ah, sector_t lba)
{
 ah->lba0 = lba;
 ah->lba1 = lba >>= 8;
 ah->lba2 = lba >>= 8;
 ah->lba3 = lba >>= 8;
 ah->lba4 = lba >>= 8;
 ah->lba5 = lba >>= 8;
}
