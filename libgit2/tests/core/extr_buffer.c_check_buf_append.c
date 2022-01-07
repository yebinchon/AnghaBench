
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int asize; int size; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,size_t) ;
 int cl_assert_equal_s (char const*,int ) ;
 int git_buf_cstr (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 scalar_t__ git_buf_oom (TYPE_1__*) ;
 int git_buf_puts (TYPE_1__*,char const*) ;
 int git_buf_sets (TYPE_1__*,char const*) ;

__attribute__((used)) static void
check_buf_append(
 const char* data_a,
 const char* data_b,
 const char* expected_data,
 size_t expected_size,
 size_t expected_asize)
{
 git_buf tgt = GIT_BUF_INIT;

 git_buf_sets(&tgt, data_a);
 cl_assert(git_buf_oom(&tgt) == 0);
 git_buf_puts(&tgt, data_b);
 cl_assert(git_buf_oom(&tgt) == 0);
 cl_assert_equal_s(expected_data, git_buf_cstr(&tgt));
 cl_assert_equal_i(tgt.size, expected_size);
 if (expected_asize > 0)
  cl_assert_equal_i(tgt.asize, expected_asize);

 git_buf_dispose(&tgt);
}
