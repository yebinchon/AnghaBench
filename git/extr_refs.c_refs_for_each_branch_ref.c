
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
typedef int each_ref_fn ;


 int refs_for_each_ref_in (struct ref_store*,char*,int ,void*) ;

int refs_for_each_branch_ref(struct ref_store *refs, each_ref_fn fn, void *cb_data)
{
 return refs_for_each_ref_in(refs, "refs/heads/", fn, cb_data);
}
