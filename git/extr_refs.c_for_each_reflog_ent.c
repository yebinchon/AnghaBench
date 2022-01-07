
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int each_reflog_ent_fn ;


 int get_main_ref_store (int ) ;
 int refs_for_each_reflog_ent (int ,char const*,int ,void*) ;
 int the_repository ;

int for_each_reflog_ent(const char *refname, each_reflog_ent_fn fn,
   void *cb_data)
{
 return refs_for_each_reflog_ent(get_main_ref_store(the_repository), refname,
     fn, cb_data);
}
