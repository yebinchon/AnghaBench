
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_nlink; } ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_path_isfile (char const*) ;
 int p_stat (char const*,struct stat*) ;

void assert_hard_link(const char *path)
{

 struct stat st;

 cl_assert(git_path_isfile(path));
 cl_git_pass(p_stat(path, &st));
 cl_assert(st.st_nlink > 1);
}
