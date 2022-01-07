
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_diff ;
struct TYPE_5__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_ERROR ;
 char const* PATCH_BINARY_DELTA ;
 char const* PATCH_BINARY_LITERAL ;
 char const* PATCH_ORIGINAL_TO_CHANGE_FIRSTLINE ;
 char const* PATCH_ORIGINAL_TO_CHANGE_MIDDLE ;
 int cl_git_fail_with (int ,int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_puts (TYPE_1__*,char const*) ;
 int git_diff_from_buffer (int **,int ,int ) ;

__attribute__((used)) static void test_parse_invalid_diff(const char *invalid_diff)
{
 git_diff *diff;
 git_buf buf = GIT_BUF_INIT;




 git_buf_puts(&buf, PATCH_ORIGINAL_TO_CHANGE_FIRSTLINE);
 git_buf_puts(&buf, PATCH_BINARY_DELTA);
 git_buf_puts(&buf, invalid_diff);
 git_buf_puts(&buf, PATCH_ORIGINAL_TO_CHANGE_MIDDLE);
 git_buf_puts(&buf, PATCH_BINARY_LITERAL);

 cl_git_fail_with(GIT_ERROR,
  git_diff_from_buffer(&diff, buf.ptr, buf.size));

 git_buf_dispose(&buf);
}
