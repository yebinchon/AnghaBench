
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct ref_transaction {int dummy; } ;
struct ref_store {int dummy; } ;
struct object_id {int dummy; } ;
typedef enum action_on_err { ____Placeholder_action_on_err } action_on_err ;


 scalar_t__ REF_TYPE_PSEUDOREF ;
 struct strbuf STRBUF_INIT ;



 char* _ (char*) ;
 int assert (int) ;
 int die (char const*,char const*,char*) ;
 int error (char const*,char const*,char*) ;
 struct ref_store* get_main_ref_store (int ) ;
 struct ref_transaction* ref_store_transaction_begin (struct ref_store*,struct strbuf*) ;
 scalar_t__ ref_transaction_commit (struct ref_transaction*,struct strbuf*) ;
 int ref_transaction_free (struct ref_transaction*) ;
 scalar_t__ ref_transaction_update (struct ref_transaction*,char const*,struct object_id const*,struct object_id const*,unsigned int,char const*,struct strbuf*) ;
 scalar_t__ ref_type (char const*) ;
 int strbuf_release (struct strbuf*) ;
 int the_repository ;
 int write_pseudoref (char const*,struct object_id const*,struct object_id const*,struct strbuf*) ;

int refs_update_ref(struct ref_store *refs, const char *msg,
      const char *refname, const struct object_id *new_oid,
      const struct object_id *old_oid, unsigned int flags,
      enum action_on_err onerr)
{
 struct ref_transaction *t = ((void*)0);
 struct strbuf err = STRBUF_INIT;
 int ret = 0;

 if (ref_type(refname) == REF_TYPE_PSEUDOREF) {
  assert(refs == get_main_ref_store(the_repository));
  ret = write_pseudoref(refname, new_oid, old_oid, &err);
 } else {
  t = ref_store_transaction_begin(refs, &err);
  if (!t ||
      ref_transaction_update(t, refname, new_oid, old_oid,
        flags, msg, &err) ||
      ref_transaction_commit(t, &err)) {
   ret = 1;
   ref_transaction_free(t);
  }
 }
 if (ret) {
  const char *str = _("update_ref failed for ref '%s': %s");

  switch (onerr) {
  case 129:
   error(str, refname, err.buf);
   break;
  case 130:
   die(str, refname, err.buf);
   break;
  case 128:
   break;
  }
  strbuf_release(&err);
  return 1;
 }
 strbuf_release(&err);
 if (t)
  ref_transaction_free(t);
 return 0;
}
