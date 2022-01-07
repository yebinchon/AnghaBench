
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_pathspec ;


 int git__free (int *) ;
 int git_pathspec__clear (int *) ;

__attribute__((used)) static void pathspec_free(git_pathspec *ps)
{
 git_pathspec__clear(ps);
 git__free(ps);
}
