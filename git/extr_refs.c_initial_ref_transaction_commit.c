
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct ref_transaction {struct ref_store* ref_store; } ;
struct ref_store {TYPE_1__* be; } ;
struct TYPE_2__ {int (* initial_transaction_commit ) (struct ref_store*,struct ref_transaction*,struct strbuf*) ;} ;


 int stub1 (struct ref_store*,struct ref_transaction*,struct strbuf*) ;

int initial_ref_transaction_commit(struct ref_transaction *transaction,
       struct strbuf *err)
{
 struct ref_store *refs = transaction->ref_store;

 return refs->be->initial_transaction_commit(refs, transaction, err);
}
