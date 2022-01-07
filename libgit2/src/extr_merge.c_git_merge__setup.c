
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_annotated_commit ;


 int assert (int ) ;
 int git_annotated_commit_id (int const*) ;
 int git_repository__set_orig_head (int *,int ) ;
 int write_merge_head (int *,int const**,size_t) ;
 int write_merge_mode (int *) ;
 int write_merge_msg (int *,int const**,size_t) ;

int git_merge__setup(
 git_repository *repo,
 const git_annotated_commit *our_head,
 const git_annotated_commit *heads[],
 size_t heads_len)
{
 int error = 0;

 assert (repo && our_head && heads);

 if ((error = git_repository__set_orig_head(repo, git_annotated_commit_id(our_head))) == 0 &&
  (error = write_merge_head(repo, heads, heads_len)) == 0 &&
  (error = write_merge_mode(repo)) == 0) {
  error = write_merge_msg(repo, heads, heads_len);
 }

 return error;
}
