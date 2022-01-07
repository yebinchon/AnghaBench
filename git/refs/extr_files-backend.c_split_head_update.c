
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {struct ref_update* util; } ;
struct string_list {int dummy; } ;
struct strbuf {int dummy; } ;
struct ref_update {int flags; int refname; int msg; int old_oid; int new_oid; } ;
struct ref_transaction {int dummy; } ;


 int BUG (char*,int ) ;
 int REF_IS_PRUNING ;
 int REF_LOG_ONLY ;
 int REF_NO_DEREF ;
 int REF_UPDATE_VIA_HEAD ;
 int TRANSACTION_NAME_CONFLICT ;
 struct ref_update* ref_transaction_add_update (struct ref_transaction*,char*,int,int *,int *,int ) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 scalar_t__ strcmp (int ,char const*) ;
 scalar_t__ string_list_has_string (struct string_list*,char*) ;
 struct string_list_item* string_list_insert (struct string_list*,int ) ;

__attribute__((used)) static int split_head_update(struct ref_update *update,
        struct ref_transaction *transaction,
        const char *head_ref,
        struct string_list *affected_refnames,
        struct strbuf *err)
{
 struct string_list_item *item;
 struct ref_update *new_update;

 if ((update->flags & REF_LOG_ONLY) ||
     (update->flags & REF_IS_PRUNING) ||
     (update->flags & REF_UPDATE_VIA_HEAD))
  return 0;

 if (strcmp(update->refname, head_ref))
  return 0;






 if (string_list_has_string(affected_refnames, "HEAD")) {

  strbuf_addf(err,
       "multiple updates for 'HEAD' (including one "
       "via its referent '%s') are not allowed",
       update->refname);
  return TRANSACTION_NAME_CONFLICT;
 }

 new_update = ref_transaction_add_update(
   transaction, "HEAD",
   update->flags | REF_LOG_ONLY | REF_NO_DEREF,
   &update->new_oid, &update->old_oid,
   update->msg);






 if (strcmp(new_update->refname, "HEAD"))
  BUG("%s unexpectedly not 'HEAD'", new_update->refname);
 item = string_list_insert(affected_refnames, new_update->refname);
 item->util = new_update;

 return 0;
}
