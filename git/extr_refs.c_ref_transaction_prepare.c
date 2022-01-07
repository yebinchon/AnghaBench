
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct ref_transaction {int state; struct ref_store* ref_store; } ;
struct ref_store {TYPE_1__* be; } ;
struct TYPE_2__ {int (* transaction_prepare ) (struct ref_store*,struct ref_transaction*,struct strbuf*) ;} ;


 int BUG (char*) ;
 int GIT_QUARANTINE_ENVIRONMENT ;



 int _ (char*) ;
 scalar_t__ getenv (int ) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int stub1 (struct ref_store*,struct ref_transaction*,struct strbuf*) ;

int ref_transaction_prepare(struct ref_transaction *transaction,
       struct strbuf *err)
{
 struct ref_store *refs = transaction->ref_store;

 switch (transaction->state) {
 case 129:

  break;
 case 128:
  BUG("prepare called twice on reference transaction");
  break;
 case 130:
  BUG("prepare called on a closed reference transaction");
  break;
 default:
  BUG("unexpected reference transaction state");
  break;
 }

 if (getenv(GIT_QUARANTINE_ENVIRONMENT)) {
  strbuf_addstr(err,
         _("ref updates forbidden inside quarantine environment"));
  return -1;
 }

 return refs->be->transaction_prepare(refs, transaction, err);
}
