
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct strbuf {int buf; } ;
struct ref_store {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 struct string_list STRING_LIST_INIT_NODUP ;
 int error (char*,int ) ;
 int refs_verify_refname_available (struct ref_store*,char const*,int *,struct string_list*,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;
 int string_list_clear (struct string_list*,int ) ;
 int string_list_insert (struct string_list*,char const*) ;

int refs_rename_ref_available(struct ref_store *refs,
         const char *old_refname,
         const char *new_refname)
{
 struct string_list skip = STRING_LIST_INIT_NODUP;
 struct strbuf err = STRBUF_INIT;
 int ok;

 string_list_insert(&skip, old_refname);
 ok = !refs_verify_refname_available(refs, new_refname,
         ((void*)0), &skip, &err);
 if (!ok)
  error("%s", err.buf);

 string_list_clear(&skip, 0);
 strbuf_release(&err);
 return ok;
}
