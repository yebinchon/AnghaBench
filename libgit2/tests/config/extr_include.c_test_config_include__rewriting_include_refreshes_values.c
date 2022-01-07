
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; } ;


 TYPE_1__ buf ;
 int cfg ;
 int cl_assert_equal_s (int ,char*) ;
 int cl_git_fail (int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_config_get_string_buf (TYPE_1__*,int ,char*) ;
 int git_config_open_ondisk (int *,char*) ;
 int p_unlink (char*) ;

void test_config_include__rewriting_include_refreshes_values(void)
{
 cl_git_mkfile("top-level", "[include]\npath = first\n[include]\npath = second");
 cl_git_mkfile("first", "[first]\nfoo = bar");
 cl_git_mkfile("second", "[second]\nfoo = bar");

 cl_git_pass(git_config_open_ondisk(&cfg, "top-level"));
 cl_git_mkfile("first", "[first]\nother = value");
 cl_git_fail(git_config_get_string_buf(&buf, cfg, "foo.bar"));
 cl_git_pass(git_config_get_string_buf(&buf, cfg, "first.other"));
 cl_assert_equal_s(buf.ptr, "value");

 cl_git_pass(p_unlink("top-level"));
 cl_git_pass(p_unlink("first"));
 cl_git_pass(p_unlink("second"));
}
