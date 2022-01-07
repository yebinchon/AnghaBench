
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_up_workingdir (char*) ;
 int test_add_index (char const*,char const*,char const*) ;

void test_index_crlf__matches_core_git(void)
{
 const char *safecrlf[] = { "true", "false", "warn", ((void*)0) };
 const char *autocrlf[] = { "true", "false", "input", ((void*)0) };
 const char *attrs[] = { "", "-crlf", "-text", "eol=crlf", "eol=lf",
  "text", "text eol=crlf", "text eol=lf",
  "text=auto", "text=auto eol=crlf", "text=auto eol=lf",
  ((void*)0) };
 const char **a, **b, **c;

 for (a = safecrlf; *a; a++) {
  for (b = autocrlf; *b; b++) {
   for (c = attrs; *c; c++) {
    set_up_workingdir("crlf");
    test_add_index(*a, *b, *c);
   }
  }
 }
}
