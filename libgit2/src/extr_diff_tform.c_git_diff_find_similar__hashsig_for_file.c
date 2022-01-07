
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_hashsig_option_t ;
typedef int git_hashsig ;
typedef int git_diff_file ;


 int GIT_UNUSED (int const*) ;
 int git_hashsig_create_fromfile (int **,char const*,int ) ;

int git_diff_find_similar__hashsig_for_file(
 void **out, const git_diff_file *f, const char *path, void *p)
{
 git_hashsig_option_t opt = (git_hashsig_option_t)(intptr_t)p;

 GIT_UNUSED(f);
 return git_hashsig_create_fromfile((git_hashsig **)out, path, opt);
}
