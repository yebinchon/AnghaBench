
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_buf_sets (TYPE_1__*,char*) ;
 int git_path_apply_relative (TYPE_1__*,char*) ;

void test_core_path__14_apply_relative(void)
{
 git_buf p = GIT_BUF_INIT;

 cl_git_pass(git_buf_sets(&p, "/this/is/a/base"));

 cl_git_pass(git_path_apply_relative(&p, "../test"));
 cl_assert_equal_s("/this/is/a/test", p.ptr);

 cl_git_pass(git_path_apply_relative(&p, "../../the/./end"));
 cl_assert_equal_s("/this/is/the/end", p.ptr);

 cl_git_pass(git_path_apply_relative(&p, "./of/this/../the/string"));
 cl_assert_equal_s("/this/is/the/end/of/the/string", p.ptr);

 cl_git_pass(git_path_apply_relative(&p, "../../../../../.."));
 cl_assert_equal_s("/this/", p.ptr);

 cl_git_pass(git_path_apply_relative(&p, "../"));
 cl_assert_equal_s("/", p.ptr);

 cl_git_fail(git_path_apply_relative(&p, "../../.."));


 cl_git_pass(git_buf_sets(&p, "d:/another/test"));

 cl_git_pass(git_path_apply_relative(&p, "../.."));
 cl_assert_equal_s("d:/", p.ptr);

 cl_git_pass(git_path_apply_relative(&p, "from/here/to/../and/./back/."));
 cl_assert_equal_s("d:/from/here/and/back/", p.ptr);


 cl_git_pass(git_buf_sets(&p, "https://my.url.com/test.git"));

 cl_git_pass(git_path_apply_relative(&p, "../another.git"));
 cl_assert_equal_s("https://my.url.com/another.git", p.ptr);

 cl_git_pass(git_path_apply_relative(&p, "../full/path/url.patch"));
 cl_assert_equal_s("https://my.url.com/full/path/url.patch", p.ptr);

 cl_git_pass(git_path_apply_relative(&p, ".."));
 cl_assert_equal_s("https://my.url.com/full/path/", p.ptr);

 cl_git_pass(git_path_apply_relative(&p, "../../../"));
 cl_assert_equal_s("https://", p.ptr);


 cl_git_pass(git_buf_sets(&p, "../../this/is/relative"));

 cl_git_pass(git_path_apply_relative(&p, "../../preserves/the/prefix"));
 cl_assert_equal_s("../../this/preserves/the/prefix", p.ptr);

 cl_git_pass(git_path_apply_relative(&p, "../../../../that"));
 cl_assert_equal_s("../../that", p.ptr);

 cl_git_pass(git_path_apply_relative(&p, "../there"));
 cl_assert_equal_s("../../there", p.ptr);
 git_buf_dispose(&p);
}
