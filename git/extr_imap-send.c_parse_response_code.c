
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imap_store {void* uidvalidity; struct imap* imap; } ;
struct imap_cmd_cb {scalar_t__ ctx; } ;
struct imap {void* uidnext; } ;


 int RESP_BAD ;
 int RESP_OK ;
 void* atoi (char*) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ isspace (unsigned char) ;
 char* next_arg (char**) ;
 int parse_capability (struct imap*,char*) ;
 int stderr ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int parse_response_code(struct imap_store *ctx, struct imap_cmd_cb *cb,
          char *s)
{
 struct imap *imap = ctx->imap;
 char *arg, *p;

 if (!s || *s != '[')
  return RESP_OK;
 s++;
 if (!(p = strchr(s, ']'))) {
  fprintf(stderr, "IMAP error: malformed response code\n");
  return RESP_BAD;
 }
 *p++ = 0;
 arg = next_arg(&s);
 if (!arg) {
  fprintf(stderr, "IMAP error: empty response code\n");
  return RESP_BAD;
 }
 if (!strcmp("UIDVALIDITY", arg)) {
  if (!(arg = next_arg(&s)) || !(ctx->uidvalidity = atoi(arg))) {
   fprintf(stderr, "IMAP error: malformed UIDVALIDITY status\n");
   return RESP_BAD;
  }
 } else if (!strcmp("UIDNEXT", arg)) {
  if (!(arg = next_arg(&s)) || !(imap->uidnext = atoi(arg))) {
   fprintf(stderr, "IMAP error: malformed NEXTUID status\n");
   return RESP_BAD;
  }
 } else if (!strcmp("CAPABILITY", arg)) {
  parse_capability(imap, s);
 } else if (!strcmp("ALERT", arg)) {



  for (; isspace((unsigned char)*p); p++);
  fprintf(stderr, "*** IMAP ALERT *** %s\n", p);
 } else if (cb && cb->ctx && !strcmp("APPENDUID", arg)) {
  if (!(arg = next_arg(&s)) || !(ctx->uidvalidity = atoi(arg)) ||
      !(arg = next_arg(&s)) || !(*(int *)cb->ctx = atoi(arg))) {
   fprintf(stderr, "IMAP error: malformed APPENDUID status\n");
   return RESP_BAD;
  }
 }
 return RESP_OK;
}
