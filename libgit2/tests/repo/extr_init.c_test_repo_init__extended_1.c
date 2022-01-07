
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_4__ {int flags; char* workdir_path; char* description; char* initial_head; char* origin_url; int mode; } ;
typedef TYPE_1__ git_repository_init_options ;
typedef int git_remote ;
typedef int git_reference ;


 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 int GIT_REPOSITORY_INIT_MKPATH ;
 int GIT_REPOSITORY_INIT_NO_DOTGIT_DIR ;
 TYPE_1__ GIT_REPOSITORY_INIT_OPTIONS_INIT ;
 int GIT_REPOSITORY_INIT_SHARED_GROUP ;
 int S_ISDIR (int) ;
 int S_ISGID ;
 int _repo ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_fixture_cleanup (char*) ;
 int cl_git_pass (int ) ;
 scalar_t__ cl_is_chmod_supported () ;
 int git__suffixcmp (int ,char*) ;
 int git_path_isfile (char*) ;
 int git_path_lstat (int ,struct stat*) ;
 int git_reference_free (int *) ;
 int git_reference_lookup (int **,int ,char*) ;
 int git_reference_symbolic_target (int *) ;
 scalar_t__ git_reference_type (int *) ;
 int git_remote_free (int *) ;
 int git_remote_lookup (int **,int ,char*) ;
 int git_remote_name (int *) ;
 int git_remote_url (int *) ;
 int git_repository_free (int ) ;
 int git_repository_init_ext (int *,char*,TYPE_1__*) ;
 int git_repository_is_bare (int ) ;
 int git_repository_is_empty (int ) ;
 int git_repository_path (int ) ;
 int git_repository_workdir (int ) ;

void test_repo_init__extended_1(void)
{
 git_reference *ref;
 git_remote *remote;
 struct stat st;
 git_repository_init_options opts = GIT_REPOSITORY_INIT_OPTIONS_INIT;

 opts.flags = GIT_REPOSITORY_INIT_MKPATH |
  GIT_REPOSITORY_INIT_NO_DOTGIT_DIR;
 opts.mode = GIT_REPOSITORY_INIT_SHARED_GROUP;
 opts.workdir_path = "../c_wd";
 opts.description = "Awesomest test repository evah";
 opts.initial_head = "development";
 opts.origin_url = "https://github.com/libgit2/libgit2.git";

 cl_git_pass(git_repository_init_ext(&_repo, "root/b/c.git", &opts));

 cl_assert(!git__suffixcmp(git_repository_workdir(_repo), "/c_wd/"));
 cl_assert(!git__suffixcmp(git_repository_path(_repo), "/c.git/"));
 cl_assert(git_path_isfile("root/b/c_wd/.git"));
 cl_assert(!git_repository_is_bare(_repo));

 cl_assert(!git_repository_is_empty(_repo));

 cl_git_pass(git_path_lstat(git_repository_path(_repo), &st));
 cl_assert(S_ISDIR(st.st_mode));
 if (cl_is_chmod_supported())
  cl_assert((S_ISGID & st.st_mode) == S_ISGID);
 else
  cl_assert((S_ISGID & st.st_mode) == 0);

 cl_git_pass(git_reference_lookup(&ref, _repo, "HEAD"));
 cl_assert(git_reference_type(ref) == GIT_REFERENCE_SYMBOLIC);
 cl_assert_equal_s("refs/heads/development", git_reference_symbolic_target(ref));
 git_reference_free(ref);

 cl_git_pass(git_remote_lookup(&remote, _repo, "origin"));
 cl_assert_equal_s("origin", git_remote_name(remote));
 cl_assert_equal_s(opts.origin_url, git_remote_url(remote));
 git_remote_free(remote);

 git_repository_free(_repo);
 cl_fixture_cleanup("root");
}
