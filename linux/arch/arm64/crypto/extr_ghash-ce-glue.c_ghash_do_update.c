
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char u8 ;
typedef int u64 ;
typedef struct ghash_key {int k; } const ghash_key ;
struct TYPE_3__ {int a; int b; int member_1; int member_0; } ;
typedef TYPE_1__ be128 ;


 int GHASH_BLOCK_SIZE ;
 int be64_to_cpu (int ) ;
 int cpu_to_be64 (int ) ;
 int crypto_simd_usable () ;
 int crypto_xor (char*,char const*,int ) ;
 int gf128mul_lle (TYPE_1__*,int *) ;
 int kernel_neon_begin () ;
 int kernel_neon_end () ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static void ghash_do_update(int blocks, u64 dg[], const char *src,
       struct ghash_key *key, const char *head,
       void (*simd_update)(int blocks, u64 dg[],
      const char *src,
      struct ghash_key const *k,
      const char *head))
{
 if (likely(crypto_simd_usable())) {
  kernel_neon_begin();
  simd_update(blocks, dg, src, key, head);
  kernel_neon_end();
 } else {
  be128 dst = { cpu_to_be64(dg[1]), cpu_to_be64(dg[0]) };

  do {
   const u8 *in = src;

   if (head) {
    in = head;
    blocks++;
    head = ((void*)0);
   } else {
    src += GHASH_BLOCK_SIZE;
   }

   crypto_xor((u8 *)&dst, in, GHASH_BLOCK_SIZE);
   gf128mul_lle(&dst, &key->k);
  } while (--blocks);

  dg[0] = be64_to_cpu(dst.b);
  dg[1] = be64_to_cpu(dst.a);
 }
}
