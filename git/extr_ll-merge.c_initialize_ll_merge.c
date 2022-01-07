
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config (int ,int *) ;
 int ll_user_merge ;
 int * ll_user_merge_tail ;
 int read_merge_config ;

__attribute__((used)) static void initialize_ll_merge(void)
{
 if (ll_user_merge_tail)
  return;
 ll_user_merge_tail = &ll_user_merge;
 git_config(read_merge_config, ((void*)0));
}
