
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct credential {int path; int host; int password; int username; int protocol; } ;


 struct strbuf STRBUF_INIT ;
 int is_rfc3986_reserved_or_unreserved ;
 int is_rfc3986_unreserved ;
 int rewrite_credential_file (char const*,struct credential*,struct strbuf*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_addstr_urlencode (struct strbuf*,int ,int ) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void store_credential_file(const char *fn, struct credential *c)
{
 struct strbuf buf = STRBUF_INIT;

 strbuf_addf(&buf, "%s://", c->protocol);
 strbuf_addstr_urlencode(&buf, c->username, is_rfc3986_unreserved);
 strbuf_addch(&buf, ':');
 strbuf_addstr_urlencode(&buf, c->password, is_rfc3986_unreserved);
 strbuf_addch(&buf, '@');
 if (c->host)
  strbuf_addstr_urlencode(&buf, c->host, is_rfc3986_unreserved);
 if (c->path) {
  strbuf_addch(&buf, '/');
  strbuf_addstr_urlencode(&buf, c->path,
     is_rfc3986_reserved_or_unreserved);
 }

 rewrite_credential_file(fn, c, &buf);
 strbuf_release(&buf);
}
