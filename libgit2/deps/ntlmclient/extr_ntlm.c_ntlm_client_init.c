
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int ntlm_client_flags ;
struct TYPE_7__ {int * unicode_ctx; int * hmac_ctx; int flags; } ;
typedef TYPE_1__ ntlm_client ;


 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int ntlm_hmac_ctx_free (int *) ;
 int * ntlm_hmac_ctx_init () ;
 int ntlm_unicode_ctx_free (int *) ;
 int * ntlm_unicode_ctx_init (TYPE_1__*) ;

ntlm_client *ntlm_client_init(ntlm_client_flags flags)
{
 ntlm_client *ntlm = ((void*)0);

 if ((ntlm = malloc(sizeof(ntlm_client))) == ((void*)0))
  return ((void*)0);

 memset(ntlm, 0, sizeof(ntlm_client));

 ntlm->flags = flags;

 if ((ntlm->hmac_ctx = ntlm_hmac_ctx_init()) == ((void*)0) ||
  (ntlm->unicode_ctx = ntlm_unicode_ctx_init(ntlm)) == ((void*)0)) {
  ntlm_hmac_ctx_free(ntlm->hmac_ctx);
  ntlm_unicode_ctx_free(ntlm->unicode_ctx);
  free(ntlm);
  return ((void*)0);
 }

 return ntlm;
}
