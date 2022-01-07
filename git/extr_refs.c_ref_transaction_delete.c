
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct ref_transaction {int dummy; } ;
struct object_id {int dummy; } ;


 int BUG (char*) ;
 scalar_t__ is_null_oid (struct object_id const*) ;
 int null_oid ;
 int ref_transaction_update (struct ref_transaction*,char const*,int *,struct object_id const*,unsigned int,char const*,struct strbuf*) ;

int ref_transaction_delete(struct ref_transaction *transaction,
      const char *refname,
      const struct object_id *old_oid,
      unsigned int flags, const char *msg,
      struct strbuf *err)
{
 if (old_oid && is_null_oid(old_oid))
  BUG("delete called with old_oid set to zeros");
 return ref_transaction_update(transaction, refname,
          &null_oid, old_oid,
          flags, msg, err);
}
