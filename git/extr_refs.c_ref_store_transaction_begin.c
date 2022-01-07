
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct ref_transaction {struct ref_store* ref_store; } ;
struct ref_store {int dummy; } ;


 int assert (struct strbuf*) ;
 struct ref_transaction* xcalloc (int,int) ;

struct ref_transaction *ref_store_transaction_begin(struct ref_store *refs,
          struct strbuf *err)
{
 struct ref_transaction *tr;
 assert(err);

 tr = xcalloc(1, sizeof(struct ref_transaction));
 tr->ref_store = refs;
 return tr;
}
