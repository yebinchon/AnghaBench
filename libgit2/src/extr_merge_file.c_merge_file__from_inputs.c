
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_merge_file_result ;
typedef int git_merge_file_options ;
typedef int git_merge_file_input ;


 int merge_file__binary (int *,int const*,int const*,int const*) ;
 scalar_t__ merge_file__is_binary (int const*) ;
 int merge_file__xdiff (int *,int const*,int const*,int const*,int const*) ;

__attribute__((used)) static int merge_file__from_inputs(
 git_merge_file_result *out,
 const git_merge_file_input *ancestor,
 const git_merge_file_input *ours,
 const git_merge_file_input *theirs,
 const git_merge_file_options *given_opts)
{
 if (merge_file__is_binary(ancestor) ||
  merge_file__is_binary(ours) ||
  merge_file__is_binary(theirs))
  return merge_file__binary(out, ours, theirs, given_opts);

 return merge_file__xdiff(out, ancestor, ours, theirs, given_opts);
}
