
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_5__ {scalar_t__ type; int name; } ;
typedef TYPE_1__ git_reference ;


 int GIT_ENOTFOUND ;
 int GIT_HEAD_FILE ;
 scalar_t__ GIT_REFERENCE_DIRECT ;
 int assert (int ) ;
 scalar_t__ git__strcmp (int ,int ) ;
 int git_reference_free (TYPE_1__*) ;
 int git_reference_lookup_resolved (TYPE_1__**,int *,int ,int) ;

int git_reference__is_unborn_head(bool *unborn, const git_reference *ref, git_repository *repo)
{
 int error;
 git_reference *tmp_ref;
 assert(unborn && ref && repo);

 if (ref->type == GIT_REFERENCE_DIRECT) {
  *unborn = 0;
  return 0;
 }

 error = git_reference_lookup_resolved(&tmp_ref, repo, ref->name, -1);
 git_reference_free(tmp_ref);

 if (error != 0 && error != GIT_ENOTFOUND)
  return error;
 else if (error == GIT_ENOTFOUND && git__strcmp(ref->name, GIT_HEAD_FILE) == 0)
  *unborn = 1;
 else
  *unborn = 0;

 return 0;
}
