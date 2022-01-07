
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u128 ;
typedef int le128 ;
typedef int be128 ;


 int __cast6_encrypt (void*,int *,int *) ;
 int le128_inc (int *) ;
 int le128_to_be128 (int *,int *) ;
 int u128_xor (int *,int const*,int *) ;

__attribute__((used)) static void cast6_crypt_ctr(void *ctx, u128 *dst, const u128 *src, le128 *iv)
{
 be128 ctrblk;

 le128_to_be128(&ctrblk, iv);
 le128_inc(iv);

 __cast6_encrypt(ctx, (u8 *)&ctrblk, (u8 *)&ctrblk);
 u128_xor(dst, src, (u128 *)&ctrblk);
}
