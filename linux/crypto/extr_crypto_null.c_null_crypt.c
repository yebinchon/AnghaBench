
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;


 int NULL_BLOCK_SIZE ;
 int memcpy (int *,int const*,int ) ;

__attribute__((used)) static void null_crypt(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
 memcpy(dst, src, NULL_BLOCK_SIZE);
}
