
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct public_key_signature {void* digest; void* s; int hash_algo; int encoding; int digest_size; int s_size; } ;
struct kernel_pkey_params {int key; int hash_algo; int encoding; int in_len; int in2_len; } ;


 int verify_signature (int ,struct public_key_signature*) ;

__attribute__((used)) static int asymmetric_key_verify_signature(struct kernel_pkey_params *params,
        const void *in, const void *in2)
{
 struct public_key_signature sig = {
  .s_size = params->in2_len,
  .digest_size = params->in_len,
  .encoding = params->encoding,
  .hash_algo = params->hash_algo,
  .digest = (void *)in,
  .s = (void *)in2,
 };

 return verify_signature(params->key, &sig);
}
