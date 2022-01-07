
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xxhash64_desc_ctx {int xxhstate; } ;
struct shash_desc {int dummy; } ;


 struct xxhash64_desc_ctx* shash_desc_ctx (struct shash_desc*) ;
 int xxh64_update (int *,int const*,unsigned int) ;

__attribute__((used)) static int xxhash64_update(struct shash_desc *desc, const u8 *data,
    unsigned int length)
{
 struct xxhash64_desc_ctx *dctx = shash_desc_ctx(desc);

 xxh64_update(&dctx->xxhstate, data, length);

 return 0;
}
