
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int each_ref_fn ;


 int for_each_glob_ref_in (int ,char const*,int *,void*) ;

int for_each_glob_ref(each_ref_fn fn, const char *pattern, void *cb_data)
{
 return for_each_glob_ref_in(fn, pattern, ((void*)0), cb_data);
}
