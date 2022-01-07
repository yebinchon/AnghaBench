
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_diff ;


 char* PATCH_NO_EXTENDED_HEADERS ;
 int cl_git_pass (int ) ;
 int git_diff_free (int *) ;
 int git_diff_from_buffer (int **,char const*,int ) ;
 int strlen (char const*) ;

void test_diff_parse__no_extended_headers(void)
{
 const char *content = PATCH_NO_EXTENDED_HEADERS;
 git_diff *diff;

 cl_git_pass(git_diff_from_buffer(
  &diff, content, strlen(content)));
 git_diff_free(diff);
}
