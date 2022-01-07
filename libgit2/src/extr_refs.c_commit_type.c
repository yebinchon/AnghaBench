
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_commit ;


 unsigned int git_commit_parentcount (int const*) ;

__attribute__((used)) static const char *commit_type(const git_commit *commit)
{
 unsigned int count = git_commit_parentcount(commit);

 if (count >= 2)
  return " (merge)";
 else if (count == 0)
  return " (initial)";
 else
  return "";
}
