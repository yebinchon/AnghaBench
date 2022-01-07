
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_sets (TYPE_1__*,char const*) ;
 int git_path_to_dir (TYPE_1__*) ;

__attribute__((used)) static void
check_path_to_dir(
 const char* path,
    const char* expected)
{
 git_buf tgt = GIT_BUF_INIT;

 git_buf_sets(&tgt, path);
 cl_git_pass(git_path_to_dir(&tgt));
 cl_assert_equal_s(expected, tgt.ptr);

 git_buf_dispose(&tgt);
}
