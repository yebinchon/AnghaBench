
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_index_entry ;
typedef int git_index ;


 int GIT_ENOTFOUND ;
 int assert (int ) ;
 scalar_t__ git_index_find (size_t*,int *,char const*) ;
 int index_conflict__get_byindex (int const**,int const**,int const**,int *,size_t) ;

int git_index_conflict_get(
 const git_index_entry **ancestor_out,
 const git_index_entry **our_out,
 const git_index_entry **their_out,
 git_index *index,
 const char *path)
{
 size_t pos;
 int len = 0;

 assert(ancestor_out && our_out && their_out && index && path);

 *ancestor_out = ((void*)0);
 *our_out = ((void*)0);
 *their_out = ((void*)0);

 if (git_index_find(&pos, index, path) < 0)
  return GIT_ENOTFOUND;

 if ((len = index_conflict__get_byindex(
  ancestor_out, our_out, their_out, index, pos)) < 0)
  return len;
 else if (len == 0)
  return GIT_ENOTFOUND;

 return 0;
}
