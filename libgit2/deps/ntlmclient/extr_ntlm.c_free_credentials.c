
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * password_utf16; int * userdomain_utf16; int * username_upper_utf16; int * username_utf16; int * password; int * userdomain; int * username_upper; int * username; int password_utf16_len; } ;
typedef TYPE_1__ ntlm_client ;


 int free (int *) ;
 int memzero (int *,int ) ;
 int strlen (int *) ;

__attribute__((used)) static void free_credentials(ntlm_client *ntlm)
{
 if (ntlm->password)
  memzero(ntlm->password, strlen(ntlm->password));

 if (ntlm->password_utf16)
  memzero(ntlm->password_utf16, ntlm->password_utf16_len);

 free(ntlm->username);
 free(ntlm->username_upper);
 free(ntlm->userdomain);
 free(ntlm->password);

 free(ntlm->username_utf16);
 free(ntlm->username_upper_utf16);
 free(ntlm->userdomain_utf16);
 free(ntlm->password_utf16);

 ntlm->username = ((void*)0);
 ntlm->username_upper = ((void*)0);
 ntlm->userdomain = ((void*)0);
 ntlm->password = ((void*)0);

 ntlm->username_utf16 = ((void*)0);
 ntlm->username_upper_utf16 = ((void*)0);
 ntlm->userdomain_utf16 = ((void*)0);
 ntlm->password_utf16 = ((void*)0);
}
