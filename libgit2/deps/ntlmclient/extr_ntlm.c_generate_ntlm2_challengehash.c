
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nonce; } ;
struct TYPE_6__ {int hmac_ctx; TYPE_1__ challenge; } ;
typedef TYPE_2__ ntlm_client ;


 int NTLM_NTLM2_HASH_LEN ;
 int assert (int) ;
 int ntlm_client_set_errmsg (TYPE_2__*,char*) ;
 int ntlm_hmac_ctx_reset (int ) ;
 int ntlm_hmac_md5_final (unsigned char*,size_t*,int ) ;
 int ntlm_hmac_md5_init (int ,unsigned char*,int ) ;
 int ntlm_hmac_md5_update (int ,unsigned char const*,size_t) ;

__attribute__((used)) static bool generate_ntlm2_challengehash(
 unsigned char out[16],
 ntlm_client *ntlm,
 unsigned char ntlm2_hash[NTLM_NTLM2_HASH_LEN],
 const unsigned char *blob,
 size_t blob_len)
{
 size_t out_len = 16;

 if (!ntlm_hmac_ctx_reset(ntlm->hmac_ctx) ||
  !ntlm_hmac_md5_init(ntlm->hmac_ctx,
   ntlm2_hash, NTLM_NTLM2_HASH_LEN) ||
  !ntlm_hmac_md5_update(ntlm->hmac_ctx,
   (const unsigned char *)&ntlm->challenge.nonce, 8) ||
  !ntlm_hmac_md5_update(ntlm->hmac_ctx, blob, blob_len) ||
  !ntlm_hmac_md5_final(out, &out_len, ntlm->hmac_ctx)) {
  ntlm_client_set_errmsg(ntlm, "failed to create HMAC-MD5");
  return 0;
 }

 assert(out_len == 16);
 return 1;
}
