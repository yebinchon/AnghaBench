
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int unicode_ctx; int hostname_utf16_len; int * hostname_utf16; int * hostdomain; int * hostname; } ;
typedef TYPE_1__ ntlm_client ;


 int assert (TYPE_1__*) ;
 int free (int *) ;
 int ntlm_client_set_errmsg (TYPE_1__*,char*) ;
 int ntlm_unicode_utf8_to_16 (int **,int *,int ,char const*,int ) ;
 void* strdup (char const*) ;
 int strlen (char const*) ;
 scalar_t__ supports_unicode (TYPE_1__*) ;

int ntlm_client_set_hostname(
 ntlm_client *ntlm,
 const char *hostname,
 const char *domain)
{
 assert(ntlm);

 free(ntlm->hostname);
 free(ntlm->hostdomain);
 free(ntlm->hostname_utf16);

 ntlm->hostname = ((void*)0);
 ntlm->hostdomain = ((void*)0);
 ntlm->hostname_utf16 = ((void*)0);

 if (hostname && (ntlm->hostname = strdup(hostname)) == ((void*)0)) {
  ntlm_client_set_errmsg(ntlm, "out of memory");
  return -1;
 }

 if (domain && (ntlm->hostdomain = strdup(domain)) == ((void*)0)) {
  ntlm_client_set_errmsg(ntlm, "out of memory");
  return -1;
 }

 if (hostname && supports_unicode(ntlm) && !ntlm_unicode_utf8_to_16(
   &ntlm->hostname_utf16,
   &ntlm->hostname_utf16_len,
   ntlm->unicode_ctx,
   hostname,
   strlen(hostname)))
  return -1;

 return 0;
}
