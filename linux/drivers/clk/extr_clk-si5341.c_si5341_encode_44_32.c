
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct regmap {int dummy; } ;
typedef int r ;


 int BIT (int) ;
 int BIT_ULL (int) ;
 int put_unaligned_le32 (int,int*) ;
 int regmap_bulk_write (struct regmap*,unsigned int,int*,int) ;

__attribute__((used)) static int si5341_encode_44_32(struct regmap *regmap, unsigned int reg,
 u64 n_num, u32 n_den)
{
 u8 r[10];


 while (!(n_num & BIT_ULL(43)) && !(n_den & BIT(31))) {
  n_num <<= 1;
  n_den <<= 1;
 }


 put_unaligned_le32(n_num, r);
 r[4] = (n_num >> 32) & 0xff;
 r[5] = (n_num >> 40) & 0x0f;

 put_unaligned_le32(n_den, &r[6]);


 return regmap_bulk_write(regmap, reg, r, sizeof(r));
}
