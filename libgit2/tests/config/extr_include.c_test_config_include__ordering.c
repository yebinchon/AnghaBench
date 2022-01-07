
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buf ;
 int cfg ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_clear (int *) ;
 int git_buf_cstr (int *) ;
 int git_config_get_string_buf (int *,int ,char*) ;
 int git_config_open_ondisk (int *,char*) ;
 int p_unlink (char*) ;

void test_config_include__ordering(void)
{
 cl_git_mkfile("included", "[foo \"bar\"]\nbaz = hurrah\nfrotz = hiya");
 cl_git_mkfile("including",
        "[foo \"bar\"]\nfrotz = hello\n"
        "[include]\npath = included\n"
        "[foo \"bar\"]\nbaz = huzzah\n");

 cl_git_pass(git_config_open_ondisk(&cfg, "including"));

 cl_git_pass(git_config_get_string_buf(&buf, cfg, "foo.bar.frotz"));
 cl_assert_equal_s("hiya", git_buf_cstr(&buf));
 git_buf_clear(&buf);
 cl_git_pass(git_config_get_string_buf(&buf, cfg, "foo.bar.baz"));
 cl_assert_equal_s("huzzah", git_buf_cstr(&buf));

 cl_git_pass(p_unlink("included"));
 cl_git_pass(p_unlink("including"));
}
