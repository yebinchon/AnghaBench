
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_COLLATE ;
 int LC_CTYPE ;
 int cl_git_pass (int ) ;
 int cl_skip () ;
 int git_regexp_compile (int *,char*,int ) ;
 int git_regexp_match (int *,char*) ;
 int regex ;
 int try_set_locale (int ) ;

void test_core_regexp__regex_matches_alphabet_with_locale(void)
{
 char c, str[2];





 try_set_locale(LC_COLLATE);
 try_set_locale(LC_CTYPE);

 cl_git_pass(git_regexp_compile(&regex, "[[:alpha:]]", 0));

 str[1] = '\0';
 for (c = 'a'; c <= 'z'; c++) {
     str[0] = c;
     cl_git_pass(git_regexp_match(&regex, str));
 }
 for (c = 'A'; c <= 'Z'; c++) {
     str[0] = c;
     cl_git_pass(git_regexp_match(&regex, str));
 }
}
