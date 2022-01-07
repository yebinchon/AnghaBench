
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int FILE_ATTRIBUTE_HIDDEN ;
 int GetFileAttributes (char const*) ;
 int _repo ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 scalar_t__ git__suffixcmp (char const*,char const*) ;
 int git_path_isdir (char const*) ;
 int git_repository_init (int *,char const*,int) ;
 int git_repository_is_bare (int ) ;
 int git_repository_is_empty (int ) ;
 char const* git_repository_path (int ) ;
 char* git_repository_workdir (int ) ;

__attribute__((used)) static void ensure_repository_init(
 const char *working_directory,
 int is_bare,
 const char *expected_path_repository,
 const char *expected_working_directory)
{
 const char *workdir;

 cl_assert(!git_path_isdir(working_directory));

 cl_git_pass(git_repository_init(&_repo, working_directory, is_bare));

 workdir = git_repository_workdir(_repo);
 if (workdir != ((void*)0) || expected_working_directory != ((void*)0)) {
  cl_assert(
   git__suffixcmp(workdir, expected_working_directory) == 0
  );
 }

 cl_assert(
  git__suffixcmp(git_repository_path(_repo), expected_path_repository) == 0
 );

 cl_assert(git_repository_is_bare(_repo) == is_bare);
 cl_assert(git_repository_is_empty(_repo));
}
