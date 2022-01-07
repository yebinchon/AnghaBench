
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARRAY_SIZE (int ) ;
 int check_mailmap_entries (int ,int ,scalar_t__) ;
 int check_mailmap_resolve (int ,int ,scalar_t__) ;
 int cl_check (int ) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int entries ;
 int g_mailmap ;
 int g_repo ;
 int git_mailmap_from_repository (int *,int ) ;
 int git_repository_is_bare (int ) ;
 int git_repository_set_bare (int ) ;
 int resolved ;
 int resolved_bare ;

void test_mailmap_parsing__frombare(void)
{
 g_repo = cl_git_sandbox_init("mailmap/.gitted");
 cl_git_pass(git_repository_set_bare(g_repo));
 cl_check(git_repository_is_bare(g_repo));

 cl_git_pass(git_mailmap_from_repository(&g_mailmap, g_repo));


 check_mailmap_entries(g_mailmap, entries, ARRAY_SIZE(entries) - 1);


 check_mailmap_resolve(g_mailmap, resolved, ARRAY_SIZE(resolved));
 check_mailmap_resolve(
  g_mailmap, resolved_bare, ARRAY_SIZE(resolved_bare));
}
