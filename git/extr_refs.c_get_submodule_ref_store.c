
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct ref_store {int dummy; } ;


 int REF_STORE_ODB ;
 int REF_STORE_READ ;
 struct strbuf STRBUF_INIT ;
 int free (char*) ;
 scalar_t__ is_dir_sep (char const) ;
 int is_nonbare_repository_dir (struct strbuf*) ;
 struct ref_store* lookup_ref_store_map (int *,char const*) ;
 struct ref_store* ref_store_init (int ,int) ;
 int register_ref_store_map (int *,char*,struct ref_store*,char const*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 size_t strlen (char const*) ;
 int submodule_ref_stores ;
 scalar_t__ submodule_to_gitdir (struct strbuf*,char const*) ;
 char* xmemdupz (char const*,size_t) ;

struct ref_store *get_submodule_ref_store(const char *submodule)
{
 struct strbuf submodule_sb = STRBUF_INIT;
 struct ref_store *refs;
 char *to_free = ((void*)0);
 size_t len;

 if (!submodule)
  return ((void*)0);

 len = strlen(submodule);
 while (len && is_dir_sep(submodule[len - 1]))
  len--;
 if (!len)
  return ((void*)0);

 if (submodule[len])

  submodule = to_free = xmemdupz(submodule, len);

 refs = lookup_ref_store_map(&submodule_ref_stores, submodule);
 if (refs)
  goto done;

 strbuf_addstr(&submodule_sb, submodule);
 if (!is_nonbare_repository_dir(&submodule_sb))
  goto done;

 if (submodule_to_gitdir(&submodule_sb, submodule))
  goto done;


 refs = ref_store_init(submodule_sb.buf,
         REF_STORE_READ | REF_STORE_ODB);
 register_ref_store_map(&submodule_ref_stores, "submodule",
          refs, submodule);

done:
 strbuf_release(&submodule_sb);
 free(to_free);

 return refs;
}
