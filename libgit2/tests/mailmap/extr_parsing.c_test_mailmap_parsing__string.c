
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int check_mailmap_entries (int ,int ,int ) ;
 int check_mailmap_resolve (int ,int ,int ) ;
 int cl_git_pass (int ) ;
 int entries ;
 int g_mailmap ;
 int git_mailmap_from_buffer (int *,int ,int ) ;
 int resolved ;
 int resolved_untracked ;
 int string_mailmap ;
 int strlen (int ) ;

void test_mailmap_parsing__string(void)
{
 cl_git_pass(git_mailmap_from_buffer(
  &g_mailmap, string_mailmap, strlen(string_mailmap)));


 check_mailmap_entries(g_mailmap, entries, ARRAY_SIZE(entries));


 check_mailmap_resolve(g_mailmap, resolved, ARRAY_SIZE(resolved));
 check_mailmap_resolve(
  g_mailmap, resolved_untracked, ARRAY_SIZE(resolved_untracked));
}
