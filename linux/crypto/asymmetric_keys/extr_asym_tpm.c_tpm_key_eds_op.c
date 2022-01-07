
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tpm_key {int dummy; } ;
struct kernel_pkey_params {int op; TYPE_2__* key; } ;
struct TYPE_3__ {struct tpm_key** data; } ;
struct TYPE_4__ {TYPE_1__ payload; } ;


 int BUG () ;
 int EOPNOTSUPP ;
 size_t asym_crypto ;



 int tpm_key_decrypt (struct tpm_key*,struct kernel_pkey_params*,void const*,void*) ;
 int tpm_key_encrypt (struct tpm_key*,struct kernel_pkey_params*,void const*,void*) ;
 int tpm_key_sign (struct tpm_key*,struct kernel_pkey_params*,void const*,void*) ;

__attribute__((used)) static int tpm_key_eds_op(struct kernel_pkey_params *params,
     const void *in, void *out)
{
 struct tpm_key *tk = params->key->payload.data[asym_crypto];
 int ret = -EOPNOTSUPP;


 switch (params->op) {
 case 129:
  ret = tpm_key_encrypt(tk, params, in, out);
  break;
 case 130:
  ret = tpm_key_decrypt(tk, params, in, out);
  break;
 case 128:
  ret = tpm_key_sign(tk, params, in, out);
  break;
 default:
  BUG();
 }

 return ret;
}
