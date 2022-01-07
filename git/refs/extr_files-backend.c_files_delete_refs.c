
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct strbuf {char* buf; } ;
struct ref_store {int dummy; } ;
struct files_ref_store {int base; int packed_ref_store; } ;
struct TYPE_2__ {char* string; } ;


 int REF_STORE_WRITE ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int error (int ,char const*,...) ;
 struct files_ref_store* files_downcast (struct ref_store*,int ,char*) ;
 scalar_t__ packed_refs_lock (int ,int ,struct strbuf*) ;
 int packed_refs_unlock (int ) ;
 scalar_t__ refs_delete_ref (int *,char const*,char const*,int *,unsigned int) ;
 scalar_t__ refs_delete_refs (int ,char const*,struct string_list*,unsigned int) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int files_delete_refs(struct ref_store *ref_store, const char *msg,
        struct string_list *refnames, unsigned int flags)
{
 struct files_ref_store *refs =
  files_downcast(ref_store, REF_STORE_WRITE, "delete_refs");
 struct strbuf err = STRBUF_INIT;
 int i, result = 0;

 if (!refnames->nr)
  return 0;

 if (packed_refs_lock(refs->packed_ref_store, 0, &err))
  goto error;

 if (refs_delete_refs(refs->packed_ref_store, msg, refnames, flags)) {
  packed_refs_unlock(refs->packed_ref_store);
  goto error;
 }

 packed_refs_unlock(refs->packed_ref_store);

 for (i = 0; i < refnames->nr; i++) {
  const char *refname = refnames->items[i].string;

  if (refs_delete_ref(&refs->base, msg, refname, ((void*)0), flags))
   result |= error(_("could not remove reference %s"), refname);
 }

 strbuf_release(&err);
 return result;

error:






 if (refnames->nr == 1)
  error(_("could not delete reference %s: %s"),
        refnames->items[0].string, err.buf);
 else
  error(_("could not delete references: %s"), err.buf);

 strbuf_release(&err);
 return -1;
}
