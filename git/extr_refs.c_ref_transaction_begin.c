
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct ref_transaction {int dummy; } ;


 int get_main_ref_store (int ) ;
 struct ref_transaction* ref_store_transaction_begin (int ,struct strbuf*) ;
 int the_repository ;

struct ref_transaction *ref_transaction_begin(struct strbuf *err)
{
 return ref_store_transaction_begin(get_main_ref_store(the_repository), err);
}
