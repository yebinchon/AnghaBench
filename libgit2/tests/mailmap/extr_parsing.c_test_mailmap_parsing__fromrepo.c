
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int check_mailmap_entries (int ,int ,int ) ;
 int check_mailmap_resolve (int ,int ,int ) ;
 int cl_check (int) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int entries ;
 int g_mailmap ;
 int g_repo ;
 int git_mailmap_from_repository (int *,int ) ;
 int git_repository_is_bare (int ) ;
 int resolved ;
 int resolved_untracked ;

void test_mailmap_parsing__fromrepo(void)
{
 g_repo = cl_git_sandbox_init("mailmap");
 cl_check(!git_repository_is_bare(g_repo));

 cl_git_pass(git_mailmap_from_repository(&g_mailmap, g_repo));


 check_mailmap_entries(g_mailmap, entries, ARRAY_SIZE(entries));


 check_mailmap_resolve(g_mailmap, resolved, ARRAY_SIZE(resolved));
 check_mailmap_resolve(
  g_mailmap, resolved_untracked, ARRAY_SIZE(resolved_untracked));
}
