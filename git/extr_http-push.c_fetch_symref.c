
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {scalar_t__ len; char const* buf; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int url; } ;


 int FREE_AND_NULL (char*) ;
 scalar_t__ HTTP_OK ;
 struct strbuf STRBUF_INIT ;
 int curl_errorstr ;
 int die (char*,char*,int ) ;
 int free (char*) ;
 int get_oid_hex (char const*,struct object_id*) ;
 scalar_t__ http_get_strbuf (char*,struct strbuf*,int *) ;
 int oidclr (struct object_id*) ;
 TYPE_1__* repo ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_rtrim (struct strbuf*) ;
 char* xmemdupz (char const*,int) ;
 char* xstrfmt (char*,int ,char const*) ;

__attribute__((used)) static void fetch_symref(const char *path, char **symref, struct object_id *oid)
{
 char *url = xstrfmt("%s%s", repo->url, path);
 struct strbuf buffer = STRBUF_INIT;
 const char *name;

 if (http_get_strbuf(url, &buffer, ((void*)0)) != HTTP_OK)
  die("Couldn't get %s for remote symref\n%s", url,
      curl_errorstr);
 free(url);

 FREE_AND_NULL(*symref);
 oidclr(oid);

 if (buffer.len == 0)
  return;


 strbuf_rtrim(&buffer);


 if (skip_prefix(buffer.buf, "ref: ", &name)) {
  *symref = xmemdupz(name, buffer.len - (name - buffer.buf));
 } else {
  get_oid_hex(buffer.buf, oid);
 }

 strbuf_release(&buffer);
}
