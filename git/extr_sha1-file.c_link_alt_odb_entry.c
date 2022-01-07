
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char* buf; int len; } ;
struct repository {TYPE_1__* objects; } ;
struct object_directory {struct object_directory* next; int path; } ;
struct TYPE_2__ {struct object_directory** odb_tail; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int alt_odb_usable (TYPE_1__*,struct strbuf*,char const*) ;
 int error (int ,char*) ;
 int is_absolute_path (char const*) ;
 int read_info_alternates (struct repository*,char*,int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 scalar_t__ strbuf_normalize_path (struct strbuf*) ;
 int strbuf_realpath (struct strbuf*,char const*,int) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int) ;
 struct object_directory* xcalloc (int,int) ;
 int xstrdup (char*) ;

__attribute__((used)) static int link_alt_odb_entry(struct repository *r, const char *entry,
 const char *relative_base, int depth, const char *normalized_objdir)
{
 struct object_directory *ent;
 struct strbuf pathbuf = STRBUF_INIT;

 if (!is_absolute_path(entry) && relative_base) {
  strbuf_realpath(&pathbuf, relative_base, 1);
  strbuf_addch(&pathbuf, '/');
 }
 strbuf_addstr(&pathbuf, entry);

 if (strbuf_normalize_path(&pathbuf) < 0 && relative_base) {
  error(_("unable to normalize alternate object path: %s"),
        pathbuf.buf);
  strbuf_release(&pathbuf);
  return -1;
 }





 while (pathbuf.len && pathbuf.buf[pathbuf.len - 1] == '/')
  strbuf_setlen(&pathbuf, pathbuf.len - 1);

 if (!alt_odb_usable(r->objects, &pathbuf, normalized_objdir)) {
  strbuf_release(&pathbuf);
  return -1;
 }

 ent = xcalloc(1, sizeof(*ent));
 ent->path = xstrdup(pathbuf.buf);


 *r->objects->odb_tail = ent;
 r->objects->odb_tail = &(ent->next);
 ent->next = ((void*)0);


 read_info_alternates(r, pathbuf.buf, depth + 1);

 strbuf_release(&pathbuf);
 return 0;
}
