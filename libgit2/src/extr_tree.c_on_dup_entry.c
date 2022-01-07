
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ERROR_TREE ;
 int GIT_UNUSED (void*) ;
 int git_error_set (int ,char*) ;

__attribute__((used)) static int on_dup_entry(void **old, void *new)
{
 GIT_UNUSED(old); GIT_UNUSED(new);

 git_error_set(GIT_ERROR_TREE, "duplicate entries given for update");
 return -1;
}
