
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int git_merge_file_result ;
typedef int git_merge_file_options ;
struct TYPE_11__ {int member_0; } ;
typedef TYPE_1__ git_merge_file_input ;


 int assert (int ) ;
 TYPE_1__* git_merge_file__normalize_inputs (TYPE_1__*,TYPE_1__ const*) ;
 int memset (int *,int,int) ;
 int merge_file__from_inputs (int *,TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int const*) ;

int git_merge_file(
 git_merge_file_result *out,
 const git_merge_file_input *ancestor,
 const git_merge_file_input *ours,
 const git_merge_file_input *theirs,
 const git_merge_file_options *options)
{
 git_merge_file_input inputs[3] = { {0} };

 assert(out && ours && theirs);

 memset(out, 0x0, sizeof(git_merge_file_result));

 if (ancestor)
  ancestor = git_merge_file__normalize_inputs(&inputs[0], ancestor);

 ours = git_merge_file__normalize_inputs(&inputs[1], ours);
 theirs = git_merge_file__normalize_inputs(&inputs[2], theirs);

 return merge_file__from_inputs(out, ancestor, ours, theirs, options);
}
