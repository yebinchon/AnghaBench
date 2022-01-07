
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int each_ref_fn ;


 int get_main_ref_store (int ) ;
 int refs_for_each_branch_ref (int ,int ,void*) ;
 int the_repository ;

int for_each_branch_ref(each_ref_fn fn, void *cb_data)
{
 return refs_for_each_branch_ref(get_main_ref_store(the_repository), fn, cb_data);
}
