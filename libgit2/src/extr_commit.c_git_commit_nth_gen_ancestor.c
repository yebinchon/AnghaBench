
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_commit ;


 int assert (int) ;
 scalar_t__ git_commit_dup (int **,int *) ;
 int git_commit_free (int *) ;
 int git_commit_parent (int **,int *,int ) ;

int git_commit_nth_gen_ancestor(
 git_commit **ancestor,
 const git_commit *commit,
 unsigned int n)
{
 git_commit *current, *parent = ((void*)0);
 int error;

 assert(ancestor && commit);

 if (git_commit_dup(&current, (git_commit *)commit) < 0)
  return -1;

 if (n == 0) {
  *ancestor = current;
  return 0;
 }

 while (n--) {
  error = git_commit_parent(&parent, current, 0);

  git_commit_free(current);

  if (error < 0)
   return error;

  current = parent;
 }

 *ancestor = parent;
 return 0;
}
