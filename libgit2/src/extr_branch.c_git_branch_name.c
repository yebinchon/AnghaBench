
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* name; } ;
typedef TYPE_1__ git_reference ;


 int GIT_ERROR_INVALID ;
 int GIT_REFS_HEADS_DIR ;
 int GIT_REFS_REMOTES_DIR ;
 int assert (int) ;
 int git_error_set (int ,char*,char*) ;
 scalar_t__ git_reference_is_branch (TYPE_1__ const*) ;
 scalar_t__ git_reference_is_remote (TYPE_1__ const*) ;
 int strlen (int ) ;

int git_branch_name(
 const char **out,
 const git_reference *ref)
{
 const char *branch_name;

 assert(out && ref);

 branch_name = ref->name;

 if (git_reference_is_branch(ref)) {
  branch_name += strlen(GIT_REFS_HEADS_DIR);
 } else if (git_reference_is_remote(ref)) {
  branch_name += strlen(GIT_REFS_REMOTES_DIR);
 } else {
  git_error_set(GIT_ERROR_INVALID,
    "reference '%s' is neither a local nor a remote branch.", ref->name);
  return -1;
 }
 *out = branch_name;
 return 0;
}
