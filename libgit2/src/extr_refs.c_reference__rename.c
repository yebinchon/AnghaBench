
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int new_name; int old_name; } ;
typedef TYPE_1__ rename_cb_data ;
typedef int normalized ;
typedef int git_signature ;
typedef int git_repository ;
typedef int git_refname_t ;
struct TYPE_11__ {int name; TYPE_8__* db; } ;
typedef TYPE_2__ git_reference ;
struct TYPE_12__ {int repo; } ;


 int assert (int ) ;
 int git_branch_is_head (TYPE_2__*) ;
 int git_refdb_rename (TYPE_2__**,TYPE_8__*,int ,int ,int,int const*,char const*) ;
 int * git_reference_owner (TYPE_2__*) ;
 int git_repository_foreach_head (int *,int ,int ,TYPE_1__*) ;
 int git_repository_set_head (int ,int ) ;
 int memcpy (int *,int *,int) ;
 int reference_normalize_for_repo (int ,int *,char const*,int) ;
 int update_wt_heads ;

__attribute__((used)) static int reference__rename(git_reference **out, git_reference *ref, const char *new_name, int force,
     const git_signature *signature, const char *message)
{
 git_repository *repo;
 git_refname_t normalized;
 bool should_head_be_updated = 0;
 int error = 0;

 assert(ref && new_name && signature);

 repo = git_reference_owner(ref);

 if ((error = reference_normalize_for_repo(
  normalized, repo, new_name, 1)) < 0)
  return error;


 if ((error = git_branch_is_head(ref)) < 0)
  return error;

 should_head_be_updated = (error > 0);

 if ((error = git_refdb_rename(out, ref->db, ref->name, normalized, force, signature, message)) < 0)
  return error;


 if (should_head_be_updated) {
  error = git_repository_set_head(ref->db->repo, normalized);
 } else {
  rename_cb_data payload;
  payload.old_name = ref->name;
  memcpy(&payload.new_name, &normalized, sizeof(normalized));

  error = git_repository_foreach_head(repo, update_wt_heads, 0, &payload);
 }

 return error;
}
