
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xxhash64_tfm_ctx {int seed; } ;
struct shash_desc {int tfm; } ;


 struct xxhash64_tfm_ctx* crypto_shash_ctx (int ) ;
 int put_unaligned_le64 (int ,int *) ;
 int xxh64 (int const*,unsigned int,int ) ;

__attribute__((used)) static int xxhash64_digest(struct shash_desc *desc, const u8 *data,
    unsigned int length, u8 *out)
{
 struct xxhash64_tfm_ctx *tctx = crypto_shash_ctx(desc->tfm);

 put_unaligned_le64(xxh64(data, length, tctx->seed), out);

 return 0;
}
