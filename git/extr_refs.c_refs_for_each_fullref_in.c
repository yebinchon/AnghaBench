
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
typedef int each_ref_fn ;


 unsigned int DO_FOR_EACH_INCLUDE_BROKEN ;
 int do_for_each_ref (struct ref_store*,char const*,int ,int ,unsigned int,void*) ;

int refs_for_each_fullref_in(struct ref_store *refs, const char *prefix,
        each_ref_fn fn, void *cb_data,
        unsigned int broken)
{
 unsigned int flag = 0;

 if (broken)
  flag = DO_FOR_EACH_INCLUDE_BROKEN;
 return do_for_each_ref(refs, prefix, fn, 0, flag, cb_data);
}
