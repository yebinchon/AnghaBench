
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct crypto_tfm {int dummy; } ;
struct cast5_ctx {int rr; int* Km; int* Kr; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 struct cast5_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int key_schedule (int*,int*,int*) ;
 int memcpy (int *,int const*,unsigned int) ;
 int memset (int *,int ,int) ;

int cast5_setkey(struct crypto_tfm *tfm, const u8 *key, unsigned int key_len)
{
 struct cast5_ctx *c = crypto_tfm_ctx(tfm);
 int i;
 u32 x[4];
 u32 z[4];
 u32 k[16];
 __be32 p_key[4];

 c->rr = key_len <= 10 ? 1 : 0;

 memset(p_key, 0, 16);
 memcpy(p_key, key, key_len);


 x[0] = be32_to_cpu(p_key[0]);
 x[1] = be32_to_cpu(p_key[1]);
 x[2] = be32_to_cpu(p_key[2]);
 x[3] = be32_to_cpu(p_key[3]);

 key_schedule(x, z, k);
 for (i = 0; i < 16; i++)
  c->Km[i] = k[i];
 key_schedule(x, z, k);
 for (i = 0; i < 16; i++)
  c->Kr[i] = k[i] & 0x1f;
 return 0;
}
