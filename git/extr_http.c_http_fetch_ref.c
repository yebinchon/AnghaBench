
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {scalar_t__ len; scalar_t__ buf; } ;
struct ref {int symref; int old_oid; int name; } ;
struct http_get_options {int no_cache; int member_0; } ;
struct TYPE_2__ {scalar_t__ hexsz; } ;


 scalar_t__ HTTP_OK ;
 struct strbuf STRBUF_INIT ;
 int free (char*) ;
 int get_oid_hex (scalar_t__,int *) ;
 scalar_t__ http_get_strbuf (char*,struct strbuf*,struct http_get_options*) ;
 char* quote_ref_url (char const*,int ) ;
 scalar_t__ starts_with (scalar_t__,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_rtrim (struct strbuf*) ;
 TYPE_1__* the_hash_algo ;
 int xstrdup (scalar_t__) ;

int http_fetch_ref(const char *base, struct ref *ref)
{
 struct http_get_options options = {0};
 char *url;
 struct strbuf buffer = STRBUF_INIT;
 int ret = -1;

 options.no_cache = 1;

 url = quote_ref_url(base, ref->name);
 if (http_get_strbuf(url, &buffer, &options) == HTTP_OK) {
  strbuf_rtrim(&buffer);
  if (buffer.len == the_hash_algo->hexsz)
   ret = get_oid_hex(buffer.buf, &ref->old_oid);
  else if (starts_with(buffer.buf, "ref: ")) {
   ref->symref = xstrdup(buffer.buf + 5);
   ret = 0;
  }
 }

 strbuf_release(&buffer);
 free(url);
 return ret;
}
