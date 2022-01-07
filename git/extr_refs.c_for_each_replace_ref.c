
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
typedef int each_repo_ref_fn ;


 int DO_FOR_EACH_INCLUDE_BROKEN ;
 int do_for_each_repo_ref (struct repository*,int ,int ,int ,int ,void*) ;
 int git_replace_ref_base ;
 int strlen (int ) ;

int for_each_replace_ref(struct repository *r, each_repo_ref_fn fn, void *cb_data)
{
 return do_for_each_repo_ref(r, git_replace_ref_base, fn,
        strlen(git_replace_ref_base),
        DO_FOR_EACH_INCLUDE_BROKEN, cb_data);
}
