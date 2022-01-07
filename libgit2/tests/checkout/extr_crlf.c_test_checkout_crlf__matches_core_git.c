
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int empty_workdir (char*) ;
 int test_checkout (char const*,char const*) ;

void test_checkout_crlf__matches_core_git(void)
{
 const char *autocrlf[] = { "true", "false", "input", ((void*)0) };
 const char *attrs[] = { "", "-crlf", "-text", "eol=crlf", "eol=lf",
  "text", "text eol=crlf", "text eol=lf",
  "text=auto", "text=auto eol=crlf", "text=auto eol=lf",
  ((void*)0) };
 const char **a, **b;

 for (a = autocrlf; *a; a++) {
  for (b = attrs; *b; b++) {
   empty_workdir("crlf");
   test_checkout(*a, *b);
  }
 }
}
