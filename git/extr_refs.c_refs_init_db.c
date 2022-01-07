
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct ref_store {TYPE_1__* be; } ;
struct TYPE_2__ {int (* init_db ) (struct ref_store*,struct strbuf*) ;} ;


 struct ref_store* get_main_ref_store (int ) ;
 int stub1 (struct ref_store*,struct strbuf*) ;
 int the_repository ;

int refs_init_db(struct strbuf *err)
{
 struct ref_store *refs = get_main_ref_store(the_repository);

 return refs->be->init_db(refs, err);
}
