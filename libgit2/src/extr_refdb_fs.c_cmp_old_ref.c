
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int symbolic; int oid; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ target; } ;
typedef TYPE_2__ git_reference ;
typedef int git_refdb_backend ;
typedef int git_oid ;


 scalar_t__ GIT_REFERENCE_DIRECT ;
 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 int git__strcmp (char const*,int ) ;
 int git_oid_cmp (int const*,int *) ;
 int git_reference_free (TYPE_2__*) ;
 int refdb_fs_backend__lookup (TYPE_2__**,int *,char const*) ;

__attribute__((used)) static int cmp_old_ref(int *cmp, git_refdb_backend *backend, const char *name,
 const git_oid *old_id, const char *old_target)
{
 int error = 0;
 git_reference *old_ref = ((void*)0);

 *cmp = 0;

 if (!old_id && !old_target)
  return 0;

 if ((error = refdb_fs_backend__lookup(&old_ref, backend, name)) < 0)
  goto out;


 if (old_id && old_ref->type != GIT_REFERENCE_DIRECT) {
  *cmp = -1;
  goto out;
 }
 if (old_target && old_ref->type != GIT_REFERENCE_SYMBOLIC) {
  *cmp = 1;
  goto out;
 }

 if (old_id && old_ref->type == GIT_REFERENCE_DIRECT)
  *cmp = git_oid_cmp(old_id, &old_ref->target.oid);

 if (old_target && old_ref->type == GIT_REFERENCE_SYMBOLIC)
  *cmp = git__strcmp(old_target, old_ref->target.symbolic);

out:
 git_reference_free(old_ref);

 return error;
}
