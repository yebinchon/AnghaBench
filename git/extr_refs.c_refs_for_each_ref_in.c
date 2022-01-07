
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
typedef int each_ref_fn ;


 int do_for_each_ref (struct ref_store*,char const*,int ,int ,int ,void*) ;
 int strlen (char const*) ;

int refs_for_each_ref_in(struct ref_store *refs, const char *prefix,
    each_ref_fn fn, void *cb_data)
{
 return do_for_each_ref(refs, prefix, fn, strlen(prefix), 0, cb_data);
}
