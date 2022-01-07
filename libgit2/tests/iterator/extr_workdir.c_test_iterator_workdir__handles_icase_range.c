
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_wd_first_through_third_range (int ,char*,char*) ;
 int cl_git_mkfile (char*,char*) ;
 int cl_git_remove_placeholders (int ,char*) ;
 int cl_git_sandbox_init (char*) ;
 int g_repo ;
 int git_repository_path (int ) ;

void test_iterator_workdir__handles_icase_range(void)
{
 g_repo = cl_git_sandbox_init("empty_standard_repo");
 cl_git_remove_placeholders(git_repository_path(g_repo), "dummy-marker.txt");

 cl_git_mkfile("empty_standard_repo/before", "whatever\n");
 cl_git_mkfile("empty_standard_repo/FIRST", "whatever\n");
 cl_git_mkfile("empty_standard_repo/second", "whatever\n");
 cl_git_mkfile("empty_standard_repo/THIRD", "whatever\n");
 cl_git_mkfile("empty_standard_repo/zafter", "whatever\n");
 cl_git_mkfile("empty_standard_repo/Zlast", "whatever\n");

 check_wd_first_through_third_range(g_repo, "first", "third");
 check_wd_first_through_third_range(g_repo, "FIRST", "THIRD");
 check_wd_first_through_third_range(g_repo, "first", "THIRD");
 check_wd_first_through_third_range(g_repo, "FIRST", "third");
 check_wd_first_through_third_range(g_repo, "FirSt", "tHiRd");
}
