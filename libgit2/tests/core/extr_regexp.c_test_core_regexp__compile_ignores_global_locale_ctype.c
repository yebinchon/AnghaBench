
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_CTYPE ;
 int cl_git_pass (int ) ;
 int git_regexp_compile (int *,char*,int ) ;
 int regex ;
 int try_set_locale (int ) ;

void test_core_regexp__compile_ignores_global_locale_ctype(void)
{
 try_set_locale(LC_CTYPE);
 cl_git_pass(git_regexp_compile(&regex, "[\xc0-\xff][\x80-\xbf]", 0));
}
