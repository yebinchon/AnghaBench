
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; } ;
struct repository {int dummy; } ;
struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;


 int RESOLVE_REF_READING ;
 struct strbuf STRBUF_INIT ;
 int free (char*) ;
 struct ref_store* get_main_ref_store (struct repository*) ;
 int oidcpy (struct object_id*,struct object_id*) ;
 char** ref_rev_parse_rules ;
 scalar_t__ refs_reflog_exists (struct ref_store*,char const*) ;
 char* refs_resolve_ref_unsafe (struct ref_store*,char const*,int ,struct object_id*,int *) ;
 int strbuf_addf (struct strbuf*,char const*,int,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* substitute_branch_name (struct repository*,char const**,int*) ;
 int warn_ambiguous_refs ;
 char* xstrdup (char const*) ;

int repo_dwim_log(struct repository *r, const char *str, int len,
    struct object_id *oid, char **log)
{
 struct ref_store *refs = get_main_ref_store(r);
 char *last_branch = substitute_branch_name(r, &str, &len);
 const char **p;
 int logs_found = 0;
 struct strbuf path = STRBUF_INIT;

 *log = ((void*)0);
 for (p = ref_rev_parse_rules; *p; p++) {
  struct object_id hash;
  const char *ref, *it;

  strbuf_reset(&path);
  strbuf_addf(&path, *p, len, str);
  ref = refs_resolve_ref_unsafe(refs, path.buf,
           RESOLVE_REF_READING,
           &hash, ((void*)0));
  if (!ref)
   continue;
  if (refs_reflog_exists(refs, path.buf))
   it = path.buf;
  else if (strcmp(ref, path.buf) &&
    refs_reflog_exists(refs, ref))
   it = ref;
  else
   continue;
  if (!logs_found++) {
   *log = xstrdup(it);
   oidcpy(oid, &hash);
  }
  if (!warn_ambiguous_refs)
   break;
 }
 strbuf_release(&path);
 free(last_branch);
 return logs_found;
}
