
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
typedef int each_ref_fn ;


 int for_each_bisect_ref (struct ref_store*,int ,void*,int ) ;
 int term_bad ;

__attribute__((used)) static int for_each_bad_bisect_ref(struct ref_store *refs, each_ref_fn fn, void *cb_data)
{
 return for_each_bisect_ref(refs, fn, cb_data, term_bad);
}
