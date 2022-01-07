
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_key {scalar_t__ blob_len; struct tpm_key* blob; } ;


 int kfree (struct tpm_key*) ;

__attribute__((used)) static void asym_tpm_destroy(void *payload0, void *payload3)
{
 struct tpm_key *tk = payload0;

 if (!tk)
  return;

 kfree(tk->blob);
 tk->blob_len = 0;

 kfree(tk);
}
