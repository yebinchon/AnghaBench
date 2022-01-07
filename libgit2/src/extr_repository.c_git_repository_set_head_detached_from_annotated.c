
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_4__ {int description; } ;
typedef TYPE_1__ git_annotated_commit ;


 int assert (int) ;
 int detach (int *,int ,int ) ;
 int git_annotated_commit_id (TYPE_1__ const*) ;

int git_repository_set_head_detached_from_annotated(
 git_repository *repo,
 const git_annotated_commit *commitish)
{
 assert(repo && commitish);

 return detach(repo, git_annotated_commit_id(commitish), commitish->description);
}
