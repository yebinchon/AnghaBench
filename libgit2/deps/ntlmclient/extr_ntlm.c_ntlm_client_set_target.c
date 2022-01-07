
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * target; int unicode_ctx; int target_utf16_len; int * target_utf16; } ;
typedef TYPE_1__ ntlm_client ;


 int assert (TYPE_1__*) ;
 int free (int *) ;
 int ntlm_client_set_errmsg (TYPE_1__*,char*) ;
 int ntlm_unicode_utf8_to_16 (int **,int *,int ,int *,int ) ;
 int * strdup (char const*) ;
 int strlen (int *) ;
 scalar_t__ supports_unicode (TYPE_1__*) ;

int ntlm_client_set_target(ntlm_client *ntlm, const char *target)
{
 assert(ntlm);

 free(ntlm->target);
 free(ntlm->target_utf16);

 ntlm->target = ((void*)0);
 ntlm->target_utf16 = ((void*)0);

 if (target) {
  if ((ntlm->target = strdup(target)) == ((void*)0)) {
   ntlm_client_set_errmsg(ntlm, "out of memory");
   return -1;
  }

  if (supports_unicode(ntlm) && !ntlm_unicode_utf8_to_16(
    &ntlm->target_utf16,
    &ntlm->target_utf16_len,
    ntlm->unicode_ctx,
    ntlm->target,
    strlen(ntlm->target)))
   return -1;
 }

 return 0;
}
