
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct twofish_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;
typedef int __le32 ;


 int DECCYCLE (int) ;
 int INPACK (int,int ,int) ;
 int OUTUNPACK (int,int ,int) ;
 struct twofish_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void twofish_decrypt(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
 struct twofish_ctx *ctx = crypto_tfm_ctx(tfm);
 const __le32 *src = (const __le32 *)in;
 __le32 *dst = (__le32 *)out;


 u32 a, b, c, d;


 u32 x, y;


 INPACK (0, c, 4);
 INPACK (1, d, 5);
 INPACK (2, a, 6);
 INPACK (3, b, 7);


 DECCYCLE (7);
 DECCYCLE (6);
 DECCYCLE (5);
 DECCYCLE (4);
 DECCYCLE (3);
 DECCYCLE (2);
 DECCYCLE (1);
 DECCYCLE (0);


 OUTUNPACK (0, a, 0);
 OUTUNPACK (1, b, 1);
 OUTUNPACK (2, c, 2);
 OUTUNPACK (3, d, 3);

}
