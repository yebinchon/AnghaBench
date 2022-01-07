
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_4__ {int nr; TYPE_1__* items; } ;
struct repository_format {int version; TYPE_2__ unknown_extensions; } ;
struct TYPE_3__ {int string; } ;


 int GIT_REPO_VERSION_READ ;
 int _ (char*) ;
 int strbuf_addf (struct strbuf*,char*,int,...) ;
 int strbuf_addstr (struct strbuf*,int ) ;

int verify_repository_format(const struct repository_format *format,
        struct strbuf *err)
{
 if (GIT_REPO_VERSION_READ < format->version) {
  strbuf_addf(err, _("Expected git repo version <= %d, found %d"),
       GIT_REPO_VERSION_READ, format->version);
  return -1;
 }

 if (format->version >= 1 && format->unknown_extensions.nr) {
  int i;

  strbuf_addstr(err, _("unknown repository extensions found:"));

  for (i = 0; i < format->unknown_extensions.nr; i++)
   strbuf_addf(err, "\n\t%s",
        format->unknown_extensions.items[i].string);
  return -1;
 }

 return 0;
}
