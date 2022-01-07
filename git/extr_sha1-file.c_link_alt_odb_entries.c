
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int buf; int len; } ;
struct repository {TYPE_2__* objects; } ;
struct TYPE_4__ {TYPE_1__* odb; } ;
struct TYPE_3__ {int path; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die (int ,int ) ;
 int error (int ,char const*) ;
 int link_alt_odb_entry (struct repository*,int ,char const*,int,int ) ;
 char* parse_alt_odb_entry (char const*,int,struct strbuf*) ;
 int strbuf_add_absolute_path (struct strbuf*,int ) ;
 scalar_t__ strbuf_normalize_path (struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void link_alt_odb_entries(struct repository *r, const char *alt,
     int sep, const char *relative_base, int depth)
{
 struct strbuf objdirbuf = STRBUF_INIT;
 struct strbuf entry = STRBUF_INIT;

 if (!alt || !*alt)
  return;

 if (depth > 5) {
  error(_("%s: ignoring alternate object stores, nesting too deep"),
    relative_base);
  return;
 }

 strbuf_add_absolute_path(&objdirbuf, r->objects->odb->path);
 if (strbuf_normalize_path(&objdirbuf) < 0)
  die(_("unable to normalize object directory: %s"),
      objdirbuf.buf);

 while (*alt) {
  alt = parse_alt_odb_entry(alt, sep, &entry);
  if (!entry.len)
   continue;
  link_alt_odb_entry(r, entry.buf,
       relative_base, depth, objdirbuf.buf);
 }
 strbuf_release(&entry);
 strbuf_release(&objdirbuf);
}
