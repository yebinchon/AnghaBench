
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_is_ignored (char*) ;
 int cl_git_mkfile (char*,char*) ;
 int make_test_data (char*,char const**) ;
 int refute_is_ignored (char*) ;

void test_ignore_status__negative_directory_ignores(void)
{
 static const char *test_files[] = {
  "empty_standard_repo/parent/child1/bar.txt",
  "empty_standard_repo/parent/child2/bar.txt",
  "empty_standard_repo/parent/child3/foo.txt",
  "empty_standard_repo/parent/child4/bar.txt",
  "empty_standard_repo/parent/nested/child5/bar.txt",
  "empty_standard_repo/parent/nested/child6/bar.txt",
  "empty_standard_repo/parent/nested/child7/bar.txt",
  "empty_standard_repo/padded_parent/child8/bar.txt",
  ((void*)0)
 };

 make_test_data("empty_standard_repo", test_files);
 cl_git_mkfile(
  "empty_standard_repo/.gitignore",
  "foo.txt\n"
  "parent/child1\n"
  "parent/child2\n"
  "parent/child4\n"
  "parent/nested/child5\n"
  "nested/child6\n"
  "nested/child7\n"
  "padded_parent/child8\n"

  "!parent/child1\n"

  "!parent/child2/bar.txt\n"


  "!parent/child3\n"

  "!child4\n"

  "!nested/child5\n"

  "!nested/child6\n"

  "!child7/\n"

  "!_parent/child8\n");

 refute_is_ignored("parent/child1/bar.txt");
 assert_is_ignored("parent/child2/bar.txt");
 assert_is_ignored("parent/child3/foo.txt");
 refute_is_ignored("parent/child4/bar.txt");
 assert_is_ignored("parent/nested/child5/bar.txt");
 refute_is_ignored("parent/nested/child6/bar.txt");
 refute_is_ignored("parent/nested/child7/bar.txt");
 assert_is_ignored("padded_parent/child8/bar.txt");
}
