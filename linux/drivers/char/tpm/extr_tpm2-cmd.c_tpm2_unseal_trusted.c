
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trusted_key_payload {int dummy; } ;
struct trusted_key_options {int dummy; } ;
struct tpm_chip {int dummy; } ;


 int tpm2_flush_context (struct tpm_chip*,int ) ;
 int tpm2_load_cmd (struct tpm_chip*,struct trusted_key_payload*,struct trusted_key_options*,int *) ;
 int tpm2_unseal_cmd (struct tpm_chip*,struct trusted_key_payload*,struct trusted_key_options*,int ) ;

int tpm2_unseal_trusted(struct tpm_chip *chip,
   struct trusted_key_payload *payload,
   struct trusted_key_options *options)
{
 u32 blob_handle;
 int rc;

 rc = tpm2_load_cmd(chip, payload, options, &blob_handle);
 if (rc)
  return rc;

 rc = tpm2_unseal_cmd(chip, payload, options, blob_handle);
 tpm2_flush_context(chip, blob_handle);
 return rc;
}
