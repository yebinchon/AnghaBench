
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct ref_transaction {int state; struct ref_store* ref_store; } ;
struct ref_store {TYPE_1__* be; } ;
struct TYPE_2__ {int (* transaction_finish ) (struct ref_store*,struct ref_transaction*,struct strbuf*) ;} ;


 int BUG (char*) ;



 int ref_transaction_prepare (struct ref_transaction*,struct strbuf*) ;
 int stub1 (struct ref_store*,struct ref_transaction*,struct strbuf*) ;

int ref_transaction_commit(struct ref_transaction *transaction,
      struct strbuf *err)
{
 struct ref_store *refs = transaction->ref_store;
 int ret;

 switch (transaction->state) {
 case 129:

  ret = ref_transaction_prepare(transaction, err);
  if (ret)
   return ret;
  break;
 case 128:

  break;
 case 130:
  BUG("commit called on a closed reference transaction");
  break;
 default:
  BUG("unexpected reference transaction state");
  break;
 }

 return refs->be->transaction_finish(refs, transaction, err);
}
