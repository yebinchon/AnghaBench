
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct ref_transaction {int dummy; } ;
struct ref_store {int dummy; } ;


 int ref_transaction_commit (struct ref_transaction*,struct strbuf*) ;

__attribute__((used)) static int packed_initial_transaction_commit(struct ref_store *ref_store,
         struct ref_transaction *transaction,
         struct strbuf *err)
{
 return ref_transaction_commit(transaction, err);
}
