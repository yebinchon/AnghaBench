
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct public_key_signature {struct public_key_signature* digest; struct public_key_signature* s; struct public_key_signature** auth_ids; } ;


 int ARRAY_SIZE (struct public_key_signature**) ;
 int kfree (struct public_key_signature*) ;

void public_key_signature_free(struct public_key_signature *sig)
{
 int i;

 if (sig) {
  for (i = 0; i < ARRAY_SIZE(sig->auth_ids); i++)
   kfree(sig->auth_ids[i]);
  kfree(sig->s);
  kfree(sig->digest);
  kfree(sig);
 }
}
