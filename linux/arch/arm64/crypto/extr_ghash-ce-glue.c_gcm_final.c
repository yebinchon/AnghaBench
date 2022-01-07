
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_2__ {void* b; void* a; } ;
typedef TYPE_1__ u128 ;
struct gcm_aes_ctx {int ghash_key; } ;
struct aead_request {int assoclen; } ;


 int AES_BLOCK_SIZE ;
 void* cpu_to_be64 (int) ;
 int crypto_xor (int *,int *,int) ;
 int ghash_do_update (int,int *,void*,int *,int *,int ) ;
 int pmull_ghash_update_p64 ;
 int put_unaligned_be64 (int ,int *) ;

__attribute__((used)) static void gcm_final(struct aead_request *req, struct gcm_aes_ctx *ctx,
        u64 dg[], u8 tag[], int cryptlen)
{
 u8 mac[AES_BLOCK_SIZE];
 u128 lengths;

 lengths.a = cpu_to_be64(req->assoclen * 8);
 lengths.b = cpu_to_be64(cryptlen * 8);

 ghash_do_update(1, dg, (void *)&lengths, &ctx->ghash_key, ((void*)0),
   pmull_ghash_update_p64);

 put_unaligned_be64(dg[1], mac);
 put_unaligned_be64(dg[0], mac + 8);

 crypto_xor(tag, mac, AES_BLOCK_SIZE);
}
