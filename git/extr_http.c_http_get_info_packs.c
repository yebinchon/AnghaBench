
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct packed_git {int dummy; } ;
struct object_id {int hash; } ;
struct http_get_options {int no_cache; int member_0; } ;


 int HTTP_OK ;
 struct strbuf STRBUF_INIT ;
 int end_url_with_slash (struct strbuf*,char const*) ;
 int fetch_and_setup_pack_index (struct packed_git**,int ,char const*) ;
 int free (char*) ;
 int http_get_strbuf (char*,struct strbuf*,struct http_get_options*) ;
 int parse_oid_hex (char const*,struct object_id*,char const**) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 char* strchrnul (char const*,char) ;

int http_get_info_packs(const char *base_url, struct packed_git **packs_head)
{
 struct http_get_options options = {0};
 int ret = 0;
 char *url;
 const char *data;
 struct strbuf buf = STRBUF_INIT;
 struct object_id oid;

 end_url_with_slash(&buf, base_url);
 strbuf_addstr(&buf, "objects/info/packs");
 url = strbuf_detach(&buf, ((void*)0));

 options.no_cache = 1;
 ret = http_get_strbuf(url, &buf, &options);
 if (ret != HTTP_OK)
  goto cleanup;

 data = buf.buf;
 while (*data) {
  if (skip_prefix(data, "P pack-", &data) &&
      !parse_oid_hex(data, &oid, &data) &&
      skip_prefix(data, ".pack", &data) &&
      (*data == '\n' || *data == '\0')) {
   fetch_and_setup_pack_index(packs_head, oid.hash, base_url);
  } else {
   data = strchrnul(data, '\n');
  }
  if (*data)
   data++;
 }

cleanup:
 free(url);
 return ret;
}
