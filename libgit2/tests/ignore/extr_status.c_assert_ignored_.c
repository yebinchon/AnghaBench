
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_expect (int ,int ,char const*,int) ;
 int clar__assert (int,char const*,int,char*,char const*,int) ;
 int g_repo ;
 int git_status_should_ignore (int*,int ,char const*) ;

__attribute__((used)) static void assert_ignored_(
 bool expected, const char *filepath, const char *file, int line)
{
 int is_ignored = 0;
 cl_git_expect(
  git_status_should_ignore(&is_ignored, g_repo, filepath), 0, file, line);
 clar__assert(
  (expected != 0) == (is_ignored != 0),
  file, line, "expected != is_ignored", filepath, 1);
}
