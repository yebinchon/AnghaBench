
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct poly1305_key {int* r; } ;


 int get_unaligned_le32 (int const*) ;

void poly1305_core_setkey(struct poly1305_key *key, const u8 *raw_key)
{

 key->r[0] = (get_unaligned_le32(raw_key + 0) >> 0) & 0x3ffffff;
 key->r[1] = (get_unaligned_le32(raw_key + 3) >> 2) & 0x3ffff03;
 key->r[2] = (get_unaligned_le32(raw_key + 6) >> 4) & 0x3ffc0ff;
 key->r[3] = (get_unaligned_le32(raw_key + 9) >> 6) & 0x3f03fff;
 key->r[4] = (get_unaligned_le32(raw_key + 12) >> 8) & 0x00fffff;
}
