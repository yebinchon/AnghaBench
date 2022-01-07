
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_attr_assignment ;


 int GIT_EEXISTS ;
 int GIT_REFCOUNT_DEC (int *,int ) ;
 int git_attr_assignment__free ;

__attribute__((used)) static int merge_assignments(void **old_raw, void *new_raw)
{
 git_attr_assignment **old = (git_attr_assignment **)old_raw;
 git_attr_assignment *new = (git_attr_assignment *)new_raw;

 GIT_REFCOUNT_DEC(*old, git_attr_assignment__free);
 *old = new;
 return GIT_EEXISTS;
}
