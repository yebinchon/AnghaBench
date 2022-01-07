
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;


 int REF_ISBROKEN ;
 int REF_ISSYMREF ;
 int RESOLVE_REF_READING ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int get_main_ref_store (struct repository*) ;
 char** ref_rev_parse_rules ;
 char* refs_resolve_ref_unsafe (int ,int ,int ,struct object_id*,int*) ;
 int strbuf_addf (struct strbuf*,char const*,int,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 scalar_t__ strchr (int ,char) ;
 scalar_t__ strcmp (int ,char*) ;
 int warn_ambiguous_refs ;
 int warning (int ,int ) ;
 char* xstrdup (char const*) ;

int expand_ref(struct repository *repo, const char *str, int len,
        struct object_id *oid, char **ref)
{
 const char **p, *r;
 int refs_found = 0;
 struct strbuf fullref = STRBUF_INIT;

 *ref = ((void*)0);
 for (p = ref_rev_parse_rules; *p; p++) {
  struct object_id oid_from_ref;
  struct object_id *this_result;
  int flag;

  this_result = refs_found ? &oid_from_ref : oid;
  strbuf_reset(&fullref);
  strbuf_addf(&fullref, *p, len, str);
  r = refs_resolve_ref_unsafe(get_main_ref_store(repo),
         fullref.buf, RESOLVE_REF_READING,
         this_result, &flag);
  if (r) {
   if (!refs_found++)
    *ref = xstrdup(r);
   if (!warn_ambiguous_refs)
    break;
  } else if ((flag & REF_ISSYMREF) && strcmp(fullref.buf, "HEAD")) {
   warning(_("ignoring dangling symref %s"), fullref.buf);
  } else if ((flag & REF_ISBROKEN) && strchr(fullref.buf, '/')) {
   warning(_("ignoring broken ref %s"), fullref.buf);
  }
 }
 strbuf_release(&fullref);
 return refs_found;
}
