
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct ref_transaction {int dummy; } ;
struct ref_store {int dummy; } ;
struct files_ref_store {int dummy; } ;


 struct files_ref_store* files_downcast (struct ref_store*,int ,char*) ;
 int files_transaction_cleanup (struct files_ref_store*,struct ref_transaction*) ;

__attribute__((used)) static int files_transaction_abort(struct ref_store *ref_store,
       struct ref_transaction *transaction,
       struct strbuf *err)
{
 struct files_ref_store *refs =
  files_downcast(ref_store, 0, "ref_transaction_abort");

 files_transaction_cleanup(refs, transaction);
 return 0;
}
