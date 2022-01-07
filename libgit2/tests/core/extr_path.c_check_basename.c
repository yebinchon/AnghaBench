
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char const*,char*) ;
 int git__free (char*) ;
 int git_buf_dispose (TYPE_1__*) ;
 char* git_path_basename (char const*) ;
 scalar_t__ git_path_basename_r (TYPE_1__*,char const*) ;

__attribute__((used)) static void
check_basename(const char *A, const char *B)
{
 git_buf base = GIT_BUF_INIT;
 char *base2;

 cl_assert(git_path_basename_r(&base, A) >= 0);
 cl_assert_equal_s(B, base.ptr);
 git_buf_dispose(&base);

 cl_assert((base2 = git_path_basename(A)) != ((void*)0));
 cl_assert_equal_s(B, base2);
 git__free(base2);
}
