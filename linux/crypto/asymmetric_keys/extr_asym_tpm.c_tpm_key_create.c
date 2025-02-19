
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct tpm_key {scalar_t__ blob_len; struct tpm_key* blob; } ;


 int ENODEV ;
 int ENOMEM ;
 struct tpm_key* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int extract_key_parameters (struct tpm_key*) ;
 int kfree (struct tpm_key*) ;
 struct tpm_key* kmemdup (void const*,scalar_t__,int ) ;
 struct tpm_key* kzalloc (int,int ) ;
 int tpm_is_tpm2 (int *) ;

struct tpm_key *tpm_key_create(const void *blob, uint32_t blob_len)
{
 int r;
 struct tpm_key *tk;

 r = tpm_is_tpm2(((void*)0));
 if (r < 0)
  goto error;


 if (r > 0) {
  r = -ENODEV;
  goto error;
 }

 r = -ENOMEM;
 tk = kzalloc(sizeof(struct tpm_key), GFP_KERNEL);
 if (!tk)
  goto error;

 tk->blob = kmemdup(blob, blob_len, GFP_KERNEL);
 if (!tk->blob)
  goto error_memdup;

 tk->blob_len = blob_len;

 r = extract_key_parameters(tk);
 if (r < 0)
  goto error_extract;

 return tk;

error_extract:
 kfree(tk->blob);
 tk->blob_len = 0;
error_memdup:
 kfree(tk);
error:
 return ERR_PTR(r);
}
