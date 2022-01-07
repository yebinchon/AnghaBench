
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int crypto_shash_final (struct shash_desc*,int *) ;
 scalar_t__ crypto_shash_update (struct shash_desc*,int const*,unsigned int) ;

__attribute__((used)) static int shash_finup_unaligned(struct shash_desc *desc, const u8 *data,
     unsigned int len, u8 *out)
{
 return crypto_shash_update(desc, data, len) ?:
        crypto_shash_final(desc, out);
}
