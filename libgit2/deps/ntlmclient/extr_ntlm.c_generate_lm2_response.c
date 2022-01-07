
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned char uint64_t ;
struct TYPE_5__ {int nonce; } ;
struct TYPE_6__ {int lm_response_len; int * lm_response; int hmac_ctx; TYPE_1__ challenge; int nonce; } ;
typedef TYPE_2__ ntlm_client ;


 int NTLM_NTLM2_HASH_LEN ;
 int assert (int) ;
 unsigned char htonll (int ) ;
 int memcpy (int *,unsigned char*,int) ;
 int ntlm_client_set_errmsg (TYPE_2__*,char*) ;
 int ntlm_hmac_ctx_reset (int ) ;
 int ntlm_hmac_md5_final (unsigned char*,size_t*,int ) ;
 int ntlm_hmac_md5_init (int ,unsigned char*,int ) ;
 int ntlm_hmac_md5_update (int ,unsigned char const*,int) ;

__attribute__((used)) static bool generate_lm2_response(ntlm_client *ntlm,
 unsigned char ntlm2_hash[NTLM_NTLM2_HASH_LEN])
{
 unsigned char lm2_challengehash[16];
 size_t lm2_len = 16;
 uint64_t local_nonce;

 local_nonce = htonll(ntlm->nonce);

 if (!ntlm_hmac_ctx_reset(ntlm->hmac_ctx) ||
  !ntlm_hmac_md5_init(ntlm->hmac_ctx,
   ntlm2_hash, NTLM_NTLM2_HASH_LEN) ||
  !ntlm_hmac_md5_update(ntlm->hmac_ctx,
   (const unsigned char *)&ntlm->challenge.nonce, 8) ||
  !ntlm_hmac_md5_update(ntlm->hmac_ctx,
   (const unsigned char *)&local_nonce, 8) ||
  !ntlm_hmac_md5_final(lm2_challengehash, &lm2_len, ntlm->hmac_ctx)) {
  ntlm_client_set_errmsg(ntlm, "failed to create HMAC-MD5");
  return 0;
 }

 assert(lm2_len == 16);

 memcpy(&ntlm->lm_response[0], lm2_challengehash, 16);
 memcpy(&ntlm->lm_response[16], &local_nonce, 8);

 ntlm->lm_response_len = 24;
 return 1;
}
