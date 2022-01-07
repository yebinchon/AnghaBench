
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int each_ref_fn ;


 int get_main_ref_store (int ) ;
 int refs_for_each_ref_in (int ,char const*,int ,void*) ;
 int the_repository ;

int for_each_ref_in(const char *prefix, each_ref_fn fn, void *cb_data)
{
 return refs_for_each_ref_in(get_main_ref_store(the_repository), prefix, fn, cb_data);
}
