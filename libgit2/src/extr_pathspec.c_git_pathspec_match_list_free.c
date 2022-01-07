
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_pathspec_match_list ;


 int pathspec_match_free (int *) ;

void git_pathspec_match_list_free(git_pathspec_match_list *m)
{
 if (m)
  pathspec_match_free(m);
}
