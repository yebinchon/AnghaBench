
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct crypto_tfm {TYPE_2__* __crt_alg; } ;
struct TYPE_3__ {int (* coa_decompress ) (struct crypto_tfm*,int const*,unsigned int,int *,unsigned int*) ;} ;
struct TYPE_4__ {TYPE_1__ cra_compress; } ;


 int stub1 (struct crypto_tfm*,int const*,unsigned int,int *,unsigned int*) ;

__attribute__((used)) static int crypto_decompress(struct crypto_tfm *tfm,
                             const u8 *src, unsigned int slen,
                             u8 *dst, unsigned int *dlen)
{
 return tfm->__crt_alg->cra_compress.coa_decompress(tfm, src, slen, dst,
                                                    dlen);
}
