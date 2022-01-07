
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* path; void* username; void* protocol; int password; } ;


 TYPE_1__ cert_auth ;
 int credential_fill (TYPE_1__*) ;
 char* ssl_cert ;
 int ssl_cert_password_required ;
 void* xstrdup (char*) ;

__attribute__((used)) static int has_cert_password(void)
{
 if (ssl_cert == ((void*)0) || ssl_cert_password_required != 1)
  return 0;
 if (!cert_auth.password) {
  cert_auth.protocol = xstrdup("cert");
  cert_auth.username = xstrdup("");
  cert_auth.path = xstrdup(ssl_cert);
  credential_fill(&cert_auth);
 }
 return 1;
}
