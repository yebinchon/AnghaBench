
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct ref_transaction {int state; struct ref_store* ref_store; } ;
struct ref_store {TYPE_1__* be; } ;
struct TYPE_2__ {int (* transaction_abort ) (struct ref_store*,struct ref_transaction*,struct strbuf*) ;} ;


 int BUG (char*) ;



 int ref_transaction_free (struct ref_transaction*) ;
 int stub1 (struct ref_store*,struct ref_transaction*,struct strbuf*) ;

int ref_transaction_abort(struct ref_transaction *transaction,
     struct strbuf *err)
{
 struct ref_store *refs = transaction->ref_store;
 int ret = 0;

 switch (transaction->state) {
 case 129:

  break;
 case 128:
  ret = refs->be->transaction_abort(refs, transaction, err);
  break;
 case 130:
  BUG("abort called on a closed reference transaction");
  break;
 default:
  BUG("unexpected reference transaction state");
  break;
 }

 ref_transaction_free(transaction);
 return ret;
}
