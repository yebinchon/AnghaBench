
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imap_server_conf {char* host; void* pass; void* user; scalar_t__ use_ssl; } ;
struct credential {char* username; char* password; void* host; void* protocol; } ;


 int credential_fill (struct credential*) ;
 void* xstrdup (char*) ;
 void* xstrdup_or_null (void*) ;

__attribute__((used)) static void server_fill_credential(struct imap_server_conf *srvc, struct credential *cred)
{
 if (srvc->user && srvc->pass)
  return;

 cred->protocol = xstrdup(srvc->use_ssl ? "imaps" : "imap");
 cred->host = xstrdup(srvc->host);

 cred->username = xstrdup_or_null(srvc->user);
 cred->password = xstrdup_or_null(srvc->pass);

 credential_fill(cred);

 if (!srvc->user)
  srvc->user = xstrdup(cred->username);
 if (!srvc->pass)
  srvc->pass = xstrdup(cred->password);
}
