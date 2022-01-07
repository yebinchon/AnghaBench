
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_revwalk ;
typedef int git_repository ;
typedef int git_oid ;
struct TYPE_6__ {TYPE_1__* item; } ;
typedef TYPE_2__ git_commit_list ;
struct TYPE_5__ {int oid; } ;


 int git_commit_list_free (TYPE_2__**) ;
 int git_oid_cpy (int *,int *) ;
 int git_revwalk_free (int *) ;
 int merge_bases (TYPE_2__**,int **,int *,int const*,int const*) ;

int git_merge_base(git_oid *out, git_repository *repo, const git_oid *one, const git_oid *two)
{
 int error;
 git_revwalk *walk;
 git_commit_list *result;

 if ((error = merge_bases(&result, &walk, repo, one, two)) < 0)
  return error;

 git_oid_cpy(out, &result->item->oid);
 git_commit_list_free(&result);
 git_revwalk_free(walk);

 return 0;
}
