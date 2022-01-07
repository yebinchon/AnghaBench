
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct TYPE_2__ {char* username; char* password; } ;
struct credential_cache_entry {TYPE_1__ item; } ;
struct credential {int password; int username; } ;
typedef int FILE ;


 struct credential CREDENTIAL_INIT ;
 struct strbuf STRBUF_INIT ;
 int cache_credential (struct credential*,int) ;
 int credential_clear (struct credential*) ;
 int exit (int ) ;
 int fprintf (int *,char*,char*) ;
 struct credential_cache_entry* lookup_credential (struct credential*) ;
 scalar_t__ read_request (int *,struct credential*,struct strbuf*,int*) ;
 int remove_credential (struct credential*) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (int ,char*) ;
 int warning (char*,...) ;

__attribute__((used)) static void serve_one_client(FILE *in, FILE *out)
{
 struct credential c = CREDENTIAL_INIT;
 struct strbuf action = STRBUF_INIT;
 int timeout = -1;

 if (read_request(in, &c, &action, &timeout) < 0)
                     ;
 else if (!strcmp(action.buf, "get")) {
  struct credential_cache_entry *e = lookup_credential(&c);
  if (e) {
   fprintf(out, "username=%s\n", e->item.username);
   fprintf(out, "password=%s\n", e->item.password);
  }
 }
 else if (!strcmp(action.buf, "exit")) {
  exit(0);
 }
 else if (!strcmp(action.buf, "erase"))
  remove_credential(&c);
 else if (!strcmp(action.buf, "store")) {
  if (timeout < 0)
   warning("cache client didn't specify a timeout");
  else if (!c.username || !c.password)
   warning("cache client gave us a partial credential");
  else {
   remove_credential(&c);
   cache_credential(&c, timeout);
  }
 }
 else
  warning("cache client sent unknown action: %s", action.buf);

 credential_clear(&c);
 strbuf_release(&action);
}
