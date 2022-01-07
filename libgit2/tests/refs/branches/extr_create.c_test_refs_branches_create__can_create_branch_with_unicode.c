
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 int assert_branch_matches_name (char const*,char const*) ;
 int * branch ;
 int cl_assert_equal_s (char const*,char const*) ;
 int cl_git_pass (int ) ;
 scalar_t__ cl_repo_get_bool (int ,char*) ;
 int git_branch_create (int **,int ,char const*,int ,int ) ;
 int git_branch_delete (int *) ;
 int git_branch_name (char const**,int *) ;
 int git_commit_id (int ) ;
 int git_oid_cmp (int ,int ) ;
 int git_path_does_fs_decompose_unicode (int ) ;
 int git_reference_free (int *) ;
 int git_reference_target (int *) ;
 int git_repository_path (int ) ;
 int repo ;
 int retrieve_known_commit (int *,int ) ;
 int target ;

void test_refs_branches_create__can_create_branch_with_unicode(void)
{
 const char *nfc = "\xC3\x85\x73\x74\x72\xC3\xB6\x6D";
 const char *nfd = "\x41\xCC\x8A\x73\x74\x72\x6F\xCC\x88\x6D";
 const char *emoji = "\xF0\x9F\x8D\xB7";
 const char *names[] = { nfc, nfd, emoji };
 const char *alt[] = { nfd, nfc, ((void*)0) };
 const char *expected[] = { nfc, nfd, emoji };
 unsigned int i;
 bool fs_decompose_unicode =
  git_path_does_fs_decompose_unicode(git_repository_path(repo));

 retrieve_known_commit(&target, repo);

 if (cl_repo_get_bool(repo, "core.precomposeunicode"))
  expected[1] = nfc;

 else if (fs_decompose_unicode)
  expected[0] = nfd;

 for (i = 0; i < ARRAY_SIZE(names); ++i) {
  const char *name;
  cl_git_pass(git_branch_create(
   &branch, repo, names[i], target, 0));
  cl_git_pass(git_oid_cmp(
   git_reference_target(branch), git_commit_id(target)));

  cl_git_pass(git_branch_name(&name, branch));
  cl_assert_equal_s(expected[i], name);
  assert_branch_matches_name(expected[i], names[i]);
  if (fs_decompose_unicode && alt[i])
   assert_branch_matches_name(expected[i], alt[i]);

  cl_git_pass(git_branch_delete(branch));
  git_reference_free(branch);
  branch = ((void*)0);
 }
}
