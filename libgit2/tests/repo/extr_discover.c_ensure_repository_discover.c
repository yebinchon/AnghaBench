
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_s (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_attach (TYPE_1__*,int ,int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_path_to_dir (TYPE_1__*) ;
 int git_repository_discover (TYPE_1__*,char const*,int,char const*) ;
 int p_realpath (char const*,int *) ;

__attribute__((used)) static void ensure_repository_discover(const char *start_path,
           const char *ceiling_dirs,
           const char *expected_path)
{
 git_buf found_path = GIT_BUF_INIT, resolved = GIT_BUF_INIT;

 git_buf_attach(&resolved, p_realpath(expected_path, ((void*)0)), 0);
 cl_assert(resolved.size > 0);
 cl_git_pass(git_path_to_dir(&resolved));
 cl_git_pass(git_repository_discover(&found_path, start_path, 1, ceiling_dirs));

 cl_assert_equal_s(found_path.ptr, resolved.ptr);

 git_buf_dispose(&resolved);
 git_buf_dispose(&found_path);
}
