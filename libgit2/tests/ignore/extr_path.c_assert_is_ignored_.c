
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_expect (int ,int ,char const*,int) ;
 int clar__assert_equal (char const*,int,char*,int,char*,int,int) ;
 int g_repo ;
 int git_ignore_path_is_ignored (int*,int ,char const*) ;

__attribute__((used)) static void assert_is_ignored_(
 bool expected, const char *filepath, const char *file, int line)
{
 int is_ignored = 0;

 cl_git_expect(
  git_ignore_path_is_ignored(&is_ignored, g_repo, filepath), 0, file, line);

 clar__assert_equal(
  file, line, "expected != is_ignored", 1, "%d",
  (int)(expected != 0), (int)(is_ignored != 0));
}
