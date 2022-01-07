
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ntlm_des_block ;
struct TYPE_4__ {int nonce; } ;
struct TYPE_5__ {int lm_response_len; int * lm_response; int password; TYPE_1__ challenge; } ;
typedef TYPE_2__ ntlm_client ;


 int des_keys_from_lm_hash (int *,int *) ;
 int generate_lm_hash (int *,int ) ;
 int memcpy (int *,int ,int) ;
 int ntlm_des_encrypt (int *,int *,int *) ;

__attribute__((used)) static bool generate_lm_response(ntlm_client *ntlm)
{
 ntlm_des_block lm_hash[2], key[3], lm_response[3];
 ntlm_des_block *challenge = (ntlm_des_block *)&ntlm->challenge.nonce;


 if (!generate_lm_hash(lm_hash, ntlm->password))
  return 0;


 des_keys_from_lm_hash(key, lm_hash);


 if (!ntlm_des_encrypt(&lm_response[0], challenge, &key[0]) ||
  !ntlm_des_encrypt(&lm_response[1], challenge, &key[1]) ||
  !ntlm_des_encrypt(&lm_response[2], challenge, &key[2]))
  return 0;

 memcpy(&ntlm->lm_response[0], lm_response[0], 8);
 memcpy(&ntlm->lm_response[8], lm_response[1], 8);
 memcpy(&ntlm->lm_response[16], lm_response[2], 8);

 ntlm->lm_response_len = sizeof(ntlm->lm_response);

 return 1;
}
