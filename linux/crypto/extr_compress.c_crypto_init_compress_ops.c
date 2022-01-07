
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compress_tfm {int cot_decompress; int cot_compress; } ;
struct crypto_tfm {struct compress_tfm crt_compress; } ;


 int crypto_compress ;
 int crypto_decompress ;

int crypto_init_compress_ops(struct crypto_tfm *tfm)
{
 struct compress_tfm *ops = &tfm->crt_compress;

 ops->cot_compress = crypto_compress;
 ops->cot_decompress = crypto_decompress;

 return 0;
}
