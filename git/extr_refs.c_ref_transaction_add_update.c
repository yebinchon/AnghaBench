
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_update {unsigned int flags; int msg; int old_oid; int new_oid; } ;
struct ref_transaction {scalar_t__ state; scalar_t__ nr; struct ref_update** updates; int alloc; } ;
struct object_id {int dummy; } ;


 int ALLOC_GROW (struct ref_update**,scalar_t__,int ) ;
 int BUG (char*) ;
 int FLEX_ALLOC_STR (struct ref_update*,char const*,char const*) ;
 unsigned int REF_HAVE_NEW ;
 unsigned int REF_HAVE_OLD ;
 scalar_t__ REF_TRANSACTION_OPEN ;
 int oidcpy (int *,struct object_id const*) ;
 int xstrdup_or_null (char const*) ;

struct ref_update *ref_transaction_add_update(
  struct ref_transaction *transaction,
  const char *refname, unsigned int flags,
  const struct object_id *new_oid,
  const struct object_id *old_oid,
  const char *msg)
{
 struct ref_update *update;

 if (transaction->state != REF_TRANSACTION_OPEN)
  BUG("update called for transaction that is not open");

 FLEX_ALLOC_STR(update, refname, refname);
 ALLOC_GROW(transaction->updates, transaction->nr + 1, transaction->alloc);
 transaction->updates[transaction->nr++] = update;

 update->flags = flags;

 if (flags & REF_HAVE_NEW)
  oidcpy(&update->new_oid, new_oid);
 if (flags & REF_HAVE_OLD)
  oidcpy(&update->old_oid, old_oid);
 update->msg = xstrdup_or_null(msg);
 return update;
}
