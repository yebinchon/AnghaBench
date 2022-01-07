
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_diff ;


 int git_diff__merge (int *,int const*,int ) ;
 int git_diff__merge_like_cgit ;

int git_diff_merge(git_diff *onto, const git_diff *from)
{
 return git_diff__merge(onto, from, git_diff__merge_like_cgit);
}
