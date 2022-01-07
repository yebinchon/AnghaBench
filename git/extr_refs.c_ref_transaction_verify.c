
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct ref_transaction {int dummy; } ;
struct object_id {int dummy; } ;


 int BUG (char*) ;
 int ref_transaction_update (struct ref_transaction*,char const*,int *,struct object_id const*,unsigned int,int *,struct strbuf*) ;

int ref_transaction_verify(struct ref_transaction *transaction,
      const char *refname,
      const struct object_id *old_oid,
      unsigned int flags,
      struct strbuf *err)
{
 if (!old_oid)
  BUG("verify called with old_oid set to NULL");
 return ref_transaction_update(transaction, refname,
          ((void*)0), old_oid,
          flags, ((void*)0), err);
}
