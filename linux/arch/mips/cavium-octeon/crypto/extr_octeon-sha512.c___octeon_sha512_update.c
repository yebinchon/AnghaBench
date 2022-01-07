
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sha512_state {unsigned int* count; int const* buf; } ;


 unsigned int SHA512_BLOCK_SIZE ;
 int memcpy (int const*,int const*,unsigned int) ;
 int octeon_sha512_transform (int const*) ;

__attribute__((used)) static void __octeon_sha512_update(struct sha512_state *sctx, const u8 *data,
       unsigned int len)
{
 unsigned int part_len;
 unsigned int index;
 unsigned int i;


 index = sctx->count[0] % SHA512_BLOCK_SIZE;


 if ((sctx->count[0] += len) < len)
  sctx->count[1]++;

 part_len = SHA512_BLOCK_SIZE - index;


 if (len >= part_len) {
  memcpy(&sctx->buf[index], data, part_len);
  octeon_sha512_transform(sctx->buf);

  for (i = part_len; i + SHA512_BLOCK_SIZE <= len;
   i += SHA512_BLOCK_SIZE)
   octeon_sha512_transform(&data[i]);

  index = 0;
 } else {
  i = 0;
 }


 memcpy(&sctx->buf[index], &data[i], len - i);
}
