
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {struct ref_update* util; } ;
struct string_list {int dummy; } ;
struct strbuf {int dummy; } ;
struct ref_update {unsigned int flags; int refname; struct ref_update* parent_update; int msg; int old_oid; int new_oid; } ;
struct ref_transaction {int dummy; } ;


 int BUG (char*,int ) ;
 int REF_HAVE_OLD ;
 int REF_LOG_ONLY ;
 int REF_NO_DEREF ;
 unsigned int REF_UPDATE_VIA_HEAD ;
 int TRANSACTION_NAME_CONFLICT ;
 struct ref_update* ref_transaction_add_update (struct ref_transaction*,char const*,unsigned int,int *,int *,int ) ;
 int strbuf_addf (struct strbuf*,char*,char const*,int ) ;
 int strcmp (int ,char*) ;
 scalar_t__ string_list_has_string (struct string_list*,char const*) ;
 struct string_list_item* string_list_insert (struct string_list*,int ) ;

__attribute__((used)) static int split_symref_update(struct ref_update *update,
          const char *referent,
          struct ref_transaction *transaction,
          struct string_list *affected_refnames,
          struct strbuf *err)
{
 struct string_list_item *item;
 struct ref_update *new_update;
 unsigned int new_flags;







 if (string_list_has_string(affected_refnames, referent)) {

  strbuf_addf(err,
       "multiple updates for '%s' (including one "
       "via symref '%s') are not allowed",
       referent, update->refname);
  return TRANSACTION_NAME_CONFLICT;
 }

 new_flags = update->flags;
 if (!strcmp(update->refname, "HEAD")) {







  new_flags |= REF_UPDATE_VIA_HEAD;
 }

 new_update = ref_transaction_add_update(
   transaction, referent, new_flags,
   &update->new_oid, &update->old_oid,
   update->msg);

 new_update->parent_update = update;






 update->flags |= REF_LOG_ONLY | REF_NO_DEREF;
 update->flags &= ~REF_HAVE_OLD;
 item = string_list_insert(affected_refnames, new_update->refname);
 if (item->util)
  BUG("%s unexpectedly found in affected_refnames",
      new_update->refname);
 item->util = new_update;

 return 0;
}
