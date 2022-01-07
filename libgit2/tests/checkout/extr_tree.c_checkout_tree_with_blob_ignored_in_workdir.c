
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
typedef int git_object ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef TYPE_1__ git_checkout_options ;


 int GIT_CHECKOUT_FORCE ;
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ;
 int GIT_OBJECT_ANY ;
 int assert_on_branch (int ,char*) ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int) ;
 int cl_must_pass (int ) ;
 int g_repo ;
 int git_checkout_tree (int ,int *,TYPE_1__*) ;
 int git_ignore_add_rule (int ,char*) ;
 int git_ignore_path_is_ignored (int*,int ,char*) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 int git_path_isdir (char*) ;
 int git_path_isfile (char*) ;
 int git_reference_name_to_id (int *,int ,char*) ;
 int git_repository_set_head (int ,char*) ;
 int p_mkdir (char*,int) ;

__attribute__((used)) static int checkout_tree_with_blob_ignored_in_workdir(int strategy, bool isdir)
{
 git_oid oid;
 git_object *obj = ((void*)0);
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 int ignored = 0, error;

 assert_on_branch(g_repo, "master");




 opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 cl_git_pass(git_reference_name_to_id(&oid, g_repo, "refs/heads/dir"));
 cl_git_pass(git_object_lookup(&obj, g_repo, &oid, GIT_OBJECT_ANY));

 cl_git_pass(git_checkout_tree(g_repo, obj, &opts));
 cl_git_pass(git_repository_set_head(g_repo, "refs/heads/dir"));

 cl_assert(git_path_isfile("testrepo/README"));
 cl_assert(git_path_isfile("testrepo/branch_file.txt"));
 cl_assert(git_path_isfile("testrepo/new.txt"));
 cl_assert(git_path_isfile("testrepo/a/b.txt"));

 cl_assert(!git_path_isdir("testrepo/ab"));

 assert_on_branch(g_repo, "dir");

 git_object_free(obj);

 opts.checkout_strategy = strategy;

 if (isdir) {
  cl_must_pass(p_mkdir("testrepo/ab", 0777));
  cl_must_pass(p_mkdir("testrepo/ab/4.txt", 0777));

  cl_git_mkfile("testrepo/ab/4.txt/file1.txt", "as you wish");
  cl_git_mkfile("testrepo/ab/4.txt/file2.txt", "foo bar foo");
  cl_git_mkfile("testrepo/ab/4.txt/file3.txt", "inky blinky pinky clyde");

  cl_assert(git_path_isdir("testrepo/ab/4.txt"));
 } else {
  cl_must_pass(p_mkdir("testrepo/ab", 0777));
  cl_git_mkfile("testrepo/ab/4.txt", "as you wish");

  cl_assert(git_path_isfile("testrepo/ab/4.txt"));
 }

 cl_git_pass(git_ignore_add_rule(g_repo, "ab/4.txt\n"));

 cl_git_pass(git_ignore_path_is_ignored(&ignored, g_repo, "ab/4.txt"));
 cl_assert_equal_i(1, ignored);

 cl_git_pass(git_reference_name_to_id(&oid, g_repo, "refs/heads/subtrees"));
 cl_git_pass(git_object_lookup(&obj, g_repo, &oid, GIT_OBJECT_ANY));

 error = git_checkout_tree(g_repo, obj, &opts);

 git_object_free(obj);

 return error;
}
