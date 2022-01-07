
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_signature ;
typedef int git_mailmap ;
struct TYPE_3__ {int committer; } ;
typedef TYPE_1__ git_commit ;


 int git_mailmap_resolve_signature (int **,int const*,int ) ;

int git_commit_committer_with_mailmap(
 git_signature **out, const git_commit *commit, const git_mailmap *mailmap)
{
 return git_mailmap_resolve_signature(out, mailmap, commit->committer);
}
