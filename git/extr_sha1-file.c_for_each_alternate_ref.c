
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alternate_refs_data {void* data; int fn; } ;
typedef int alternate_ref_fn ;


 int foreach_alt_odb (int ,struct alternate_refs_data*) ;
 int refs_from_alternate_cb ;

void for_each_alternate_ref(alternate_ref_fn fn, void *data)
{
 struct alternate_refs_data cb;
 cb.fn = fn;
 cb.data = data;
 foreach_alt_odb(refs_from_alternate_cb, &cb);
}
