
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;


 int _ (char*) ;
 int error (int ) ;
 int file_exists (int ) ;
 int git_path_cherry_pick_head (struct repository*) ;
 int git_path_revert_head (struct repository*) ;
 scalar_t__ is_null_oid (struct object_id*) ;
 scalar_t__ read_ref_full (char*,int ,struct object_id*,int *) ;
 int reset_merge (struct object_id*) ;

__attribute__((used)) static int rollback_single_pick(struct repository *r)
{
 struct object_id head_oid;

 if (!file_exists(git_path_cherry_pick_head(r)) &&
     !file_exists(git_path_revert_head(r)))
  return error(_("no cherry-pick or revert in progress"));
 if (read_ref_full("HEAD", 0, &head_oid, ((void*)0)))
  return error(_("cannot resolve HEAD"));
 if (is_null_oid(&head_oid))
  return error(_("cannot abort from a branch yet to be born"));
 return reset_merge(&head_oid);
}
