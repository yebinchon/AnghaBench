
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct repository {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int free (char*) ;
 int link_alt_odb_entries (struct repository*,int ,char,char const*,int) ;
 scalar_t__ strbuf_read_file (struct strbuf*,char*,int) ;
 int strbuf_release (struct strbuf*) ;
 int warn_on_fopen_errors (char*) ;
 char* xstrfmt (char*,char const*) ;

__attribute__((used)) static void read_info_alternates(struct repository *r,
     const char *relative_base,
     int depth)
{
 char *path;
 struct strbuf buf = STRBUF_INIT;

 path = xstrfmt("%s/info/alternates", relative_base);
 if (strbuf_read_file(&buf, path, 1024) < 0) {
  warn_on_fopen_errors(path);
  free(path);
  return;
 }

 link_alt_odb_entries(r, buf.buf, '\n', relative_base, depth);
 strbuf_release(&buf);
 free(path);
}
