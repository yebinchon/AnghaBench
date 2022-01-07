
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct shash_desc {int tfm; } ;


 int * crypto_shash_ctx (int ) ;
 int * shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int crc32c_vpmsum_init(struct shash_desc *desc)
{
 u32 *mctx = crypto_shash_ctx(desc->tfm);
 u32 *crcp = shash_desc_ctx(desc);

 *crcp = *mctx;

 return 0;
}
