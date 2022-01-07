
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct hostinfo {int tcp_port; int hostname; } ;
struct expand_path_context {int directory; struct hostinfo* hostinfo; } ;


 int get_canon_hostname (struct hostinfo*) ;
 int get_ip_address (struct hostinfo*) ;
 int strbuf_addbuf (struct strbuf*,int *) ;
 int strbuf_addstr (struct strbuf*,int ) ;

__attribute__((used)) static size_t expand_path(struct strbuf *sb, const char *placeholder, void *ctx)
{
 struct expand_path_context *context = ctx;
 struct hostinfo *hi = context->hostinfo;

 switch (placeholder[0]) {
 case 'H':
  strbuf_addbuf(sb, &hi->hostname);
  return 1;
 case 'C':
  if (placeholder[1] == 'H') {
   strbuf_addstr(sb, get_canon_hostname(hi));
   return 2;
  }
  break;
 case 'I':
  if (placeholder[1] == 'P') {
   strbuf_addstr(sb, get_ip_address(hi));
   return 2;
  }
  break;
 case 'P':
  strbuf_addbuf(sb, &hi->tcp_port);
  return 1;
 case 'D':
  strbuf_addstr(sb, context->directory);
  return 1;
 }
 return 0;
}
