
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int entries; } ;


 int ARRAY_SIZE (int ) ;
 int check_mailmap_resolve (TYPE_1__*,int ,int ) ;
 int cl_assert_equal_sz (int ,int) ;
 int cl_fixture (char*) ;
 int cl_git_pass (int ) ;
 int cl_git_sandbox_init (char*) ;
 int g_config ;
 TYPE_1__* g_mailmap ;
 int g_repo ;
 int git_config_set_string (int ,char*,int ) ;
 int git_mailmap_from_repository (TYPE_1__**,int ) ;
 int git_repository_config (int *,int ) ;
 int git_vector_length (int *) ;
 int resolved_with_file_override ;

void test_mailmap_parsing__file_config(void)
{
 g_repo = cl_git_sandbox_init("mailmap");
 cl_git_pass(git_repository_config(&g_config, g_repo));

 cl_git_pass(git_config_set_string(
  g_config, "mailmap.file", cl_fixture("mailmap/file_override")));

 cl_git_pass(git_mailmap_from_repository(&g_mailmap, g_repo));


 cl_assert_equal_sz(git_vector_length(&g_mailmap->entries), 9);


 check_mailmap_resolve(
  g_mailmap, resolved_with_file_override,
  ARRAY_SIZE(resolved_with_file_override));
}
