
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int flags; } ;
typedef TYPE_3__ git_status_options ;
typedef int git_status_list ;
struct TYPE_11__ {TYPE_2__* index_to_workdir; } ;
typedef TYPE_4__ git_status_entry ;
struct TYPE_8__ {int path; } ;
struct TYPE_9__ {TYPE_1__ new_file; } ;


 TYPE_3__ GIT_STATUS_OPTIONS_INIT ;
 int GIT_STATUS_OPT_DEFAULTS ;
 int add_one_to_index (char*) ;
 int assert_is_ignored (char*) ;
 int cl_assert (int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 TYPE_4__* git_status_byindex (int *,size_t) ;
 size_t git_status_list_entrycount (int *) ;
 int git_status_list_free (int *) ;
 int git_status_list_new (int **,int ,TYPE_3__*) ;
 int make_test_data (char*,char const**) ;
 int refute_is_ignored (char*) ;
 int strcmp (char*,int ) ;

void test_ignore_status__negative_ignores_without_trailing_slash_inside_ignores(void)
{
 git_status_options status_opts = GIT_STATUS_OPTIONS_INIT;
 git_status_list *list;
 int found_parent_file = 0, found_parent_child1_file = 0, found_parent_child2_file = 0;
 size_t i;
 static const char *test_files[] = {
  "empty_standard_repo/parent/file.txt",
  "empty_standard_repo/parent/force.txt",
  "empty_standard_repo/parent/child1/file.txt",
  "empty_standard_repo/parent/child2/file.txt",
  ((void*)0)
 };

 make_test_data("empty_standard_repo", test_files);
 cl_git_mkfile(
  "empty_standard_repo/.gitignore",
  "parent/*\n"
  "!parent/force.txt\n"
  "!parent/child1\n"
  "!parent/child2/\n");

 add_one_to_index("parent/force.txt");

 assert_is_ignored("parent/file.txt");
 refute_is_ignored("parent/force.txt");
 refute_is_ignored("parent/child1/file.txt");
 refute_is_ignored("parent/child2/file.txt");

 status_opts.flags = GIT_STATUS_OPT_DEFAULTS;
 cl_git_pass(git_status_list_new(&list, g_repo, &status_opts));
 for (i = 0; i < git_status_list_entrycount(list); i++) {
  const git_status_entry *entry = git_status_byindex(list, i);

  if (!entry->index_to_workdir)
   continue;

  if (!strcmp("parent/file.txt", entry->index_to_workdir->new_file.path))
   found_parent_file = 1;

  if (!strcmp("parent/force.txt", entry->index_to_workdir->new_file.path))
   found_parent_file = 1;

  if (!strcmp("parent/child1/file.txt", entry->index_to_workdir->new_file.path))
   found_parent_child1_file = 1;

  if (!strcmp("parent/child2/file.txt", entry->index_to_workdir->new_file.path))
   found_parent_child2_file = 1;
 }
 git_status_list_free(list);

 cl_assert(found_parent_file);
 cl_assert(found_parent_child1_file);
 cl_assert(found_parent_child2_file);
}
