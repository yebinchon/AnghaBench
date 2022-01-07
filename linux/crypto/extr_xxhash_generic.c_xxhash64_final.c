
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xxhash64_desc_ctx {int xxhstate; } ;
struct shash_desc {int dummy; } ;


 int put_unaligned_le64 (int ,int *) ;
 struct xxhash64_desc_ctx* shash_desc_ctx (struct shash_desc*) ;
 int xxh64_digest (int *) ;

__attribute__((used)) static int xxhash64_final(struct shash_desc *desc, u8 *out)
{
 struct xxhash64_desc_ctx *dctx = shash_desc_ctx(desc);

 put_unaligned_le64(xxh64_digest(&dctx->xxhstate), out);

 return 0;
}
