
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct fcrypt_ctx {void** sched; } ;
struct crypto_tfm {int dummy; } ;


 void* cpu_to_be32 (int) ;
 struct fcrypt_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int ror56 (int,int,int) ;
 int ror56_64 (int,int) ;

__attribute__((used)) static int fcrypt_setkey(struct crypto_tfm *tfm, const u8 *key, unsigned int keylen)
{
 struct fcrypt_ctx *ctx = crypto_tfm_ctx(tfm);
 u32 hi, lo;


 lo = (*key++) >> 1;
 lo <<= 7;
 lo |= (*key++) >> 1;
 lo <<= 7;
 lo |= (*key++) >> 1;
 lo <<= 7;
 lo |= (*key++) >> 1;
 hi = lo >> 4;
 lo &= 0xf;
 lo <<= 7;
 lo |= (*key++) >> 1;
 lo <<= 7;
 lo |= (*key++) >> 1;
 lo <<= 7;
 lo |= (*key++) >> 1;
 lo <<= 7;
 lo |= (*key) >> 1;


 ctx->sched[0x0] = cpu_to_be32(lo); ror56(hi, lo, 11);
 ctx->sched[0x1] = cpu_to_be32(lo); ror56(hi, lo, 11);
 ctx->sched[0x2] = cpu_to_be32(lo); ror56(hi, lo, 11);
 ctx->sched[0x3] = cpu_to_be32(lo); ror56(hi, lo, 11);
 ctx->sched[0x4] = cpu_to_be32(lo); ror56(hi, lo, 11);
 ctx->sched[0x5] = cpu_to_be32(lo); ror56(hi, lo, 11);
 ctx->sched[0x6] = cpu_to_be32(lo); ror56(hi, lo, 11);
 ctx->sched[0x7] = cpu_to_be32(lo); ror56(hi, lo, 11);
 ctx->sched[0x8] = cpu_to_be32(lo); ror56(hi, lo, 11);
 ctx->sched[0x9] = cpu_to_be32(lo); ror56(hi, lo, 11);
 ctx->sched[0xa] = cpu_to_be32(lo); ror56(hi, lo, 11);
 ctx->sched[0xb] = cpu_to_be32(lo); ror56(hi, lo, 11);
 ctx->sched[0xc] = cpu_to_be32(lo); ror56(hi, lo, 11);
 ctx->sched[0xd] = cpu_to_be32(lo); ror56(hi, lo, 11);
 ctx->sched[0xe] = cpu_to_be32(lo); ror56(hi, lo, 11);
 ctx->sched[0xf] = cpu_to_be32(lo);
 return 0;

}
