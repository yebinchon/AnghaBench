
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct shash_desc {int tfm; } ;
struct s390_sha_ctx {unsigned int count; int func; int* state; int buf; } ;
typedef int bits ;
 int EINVAL ;
 int cpacf_klmd (int,int*,int ,unsigned int) ;
 unsigned int crypto_shash_blocksize (int ) ;
 int crypto_shash_digestsize (int ) ;
 int memcpy (int *,int*,int) ;
 int memset (struct s390_sha_ctx*,int,int) ;
 int s390_crypto_shash_parmsize (int) ;
 struct s390_sha_ctx* shash_desc_ctx (struct shash_desc*) ;

int s390_sha_final(struct shash_desc *desc, u8 *out)
{
 struct s390_sha_ctx *ctx = shash_desc_ctx(desc);
 unsigned int bsize = crypto_shash_blocksize(desc->tfm);
 u64 bits;
 unsigned int n, mbl_offset;

 n = ctx->count % bsize;
 bits = ctx->count * 8;
 mbl_offset = s390_crypto_shash_parmsize(ctx->func) / sizeof(u32);
 if (mbl_offset < 0)
  return -EINVAL;


 switch (ctx->func) {
 case 130:
 case 129:
  memcpy(ctx->state + mbl_offset, &bits, sizeof(bits));
  break;
 case 128:




  memset(ctx->state + mbl_offset, 0x00, sizeof(bits));
  mbl_offset += sizeof(u64) / sizeof(u32);
  memcpy(ctx->state + mbl_offset, &bits, sizeof(bits));
  break;
 case 134:
 case 133:
 case 132:
 case 131:
  break;
 default:
  return -EINVAL;
 }

 cpacf_klmd(ctx->func, ctx->state, ctx->buf, n);


 memcpy(out, ctx->state, crypto_shash_digestsize(desc->tfm));

 memset(ctx, 0, sizeof *ctx);

 return 0;
}
