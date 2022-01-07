
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * userdomain; int unicode_ctx; int userdomain_utf16_len; int userdomain_utf16; int * username_upper; int username_upper_utf16_len; int username_upper_utf16; int * username; int username_utf16_len; int username_utf16; int * password; } ;
typedef TYPE_1__ ntlm_client ;


 int assert (TYPE_1__*) ;
 int free_credentials (TYPE_1__*) ;
 int ntlm_client_set_errmsg (TYPE_1__*,char*) ;
 int ntlm_unicode_utf8_to_16 (int *,int *,int ,int *,int ) ;
 void* strdup (char const*) ;
 int strlen (int *) ;
 scalar_t__ supports_unicode (TYPE_1__*) ;
 int utf8upr (int *) ;

int ntlm_client_set_credentials(
 ntlm_client *ntlm,
 const char *username,
 const char *domain,
 const char *password)
{
 assert(ntlm);

 free_credentials(ntlm);

 if ((username && (ntlm->username = strdup(username)) == ((void*)0)) ||
  (domain && (ntlm->userdomain = strdup(domain)) == ((void*)0)) ||
  (password && (ntlm->password = strdup(password)) == ((void*)0))) {
  ntlm_client_set_errmsg(ntlm, "out of memory");
  return -1;
 }

 if (username && supports_unicode(ntlm)) {
  if ((ntlm->username_upper = strdup(username)) == ((void*)0)) {
   ntlm_client_set_errmsg(ntlm, "out of memory");
   return -1;
  }
  utf8upr(ntlm->username_upper);

  if (!ntlm_unicode_utf8_to_16(
    &ntlm->username_utf16,
    &ntlm->username_utf16_len,
    ntlm->unicode_ctx,
    ntlm->username,
    strlen(ntlm->username)))
   return -1;

  if (!ntlm_unicode_utf8_to_16(
    &ntlm->username_upper_utf16,
    &ntlm->username_upper_utf16_len,
    ntlm->unicode_ctx,
    ntlm->username_upper,
    strlen(ntlm->username_upper)))
   return -1;
 }

 if (domain && supports_unicode(ntlm) && !ntlm_unicode_utf8_to_16(
   &ntlm->userdomain_utf16,
   &ntlm->userdomain_utf16_len,
   ntlm->unicode_ctx,
   ntlm->userdomain,
   strlen(ntlm->userdomain)))
  return -1;

 return 0;
}
