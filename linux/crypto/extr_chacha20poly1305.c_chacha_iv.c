
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct chachapoly_ctx {int saltlen; int * salt; } ;
struct aead_request {int * iv; } ;
typedef int leicb ;
typedef int __le32 ;


 int CHACHA_IV_SIZE ;
 int cpu_to_le32 (int ) ;
 struct chachapoly_ctx* crypto_aead_ctx (int ) ;
 int crypto_aead_reqtfm (struct aead_request*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void chacha_iv(u8 *iv, struct aead_request *req, u32 icb)
{
 struct chachapoly_ctx *ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
 __le32 leicb = cpu_to_le32(icb);

 memcpy(iv, &leicb, sizeof(leicb));
 memcpy(iv + sizeof(leicb), ctx->salt, ctx->saltlen);
 memcpy(iv + sizeof(leicb) + ctx->saltlen, req->iv,
        CHACHA_IV_SIZE - sizeof(leicb) - ctx->saltlen);
}
