
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* orig_head_name; scalar_t__ quiet; int orig_head_id; int repo; scalar_t__ head_detached; int state_path; int onto_id; } ;
typedef TYPE_1__ git_rebase ;


 int GIT_ERROR_OS ;
 int GIT_OID_HEXSZ ;
 int HEAD_NAME_FILE ;
 int ONTO_FILE ;
 char* ORIG_DETACHED_HEAD ;
 int ORIG_HEAD_FILE ;
 int QUIET_FILE ;
 int REBASE_DIR_MODE ;
 int git_error_set (int ,char*,int ) ;
 int git_oid_fmt (char*,int *) ;
 scalar_t__ git_repository__set_orig_head (int ,int *) ;
 scalar_t__ p_mkdir (int ,int ) ;
 scalar_t__ rebase_setupfile (TYPE_1__*,int ,int ,char*,...) ;
 int rebase_setupfiles_merge (TYPE_1__*) ;

__attribute__((used)) static int rebase_setupfiles(git_rebase *rebase)
{
 char onto[GIT_OID_HEXSZ], orig_head[GIT_OID_HEXSZ];
 const char *orig_head_name;

 git_oid_fmt(onto, &rebase->onto_id);
 git_oid_fmt(orig_head, &rebase->orig_head_id);

 if (p_mkdir(rebase->state_path, REBASE_DIR_MODE) < 0) {
  git_error_set(GIT_ERROR_OS, "failed to create rebase directory '%s'", rebase->state_path);
  return -1;
 }

 orig_head_name = rebase->head_detached ? ORIG_DETACHED_HEAD :
  rebase->orig_head_name;

 if (git_repository__set_orig_head(rebase->repo, &rebase->orig_head_id) < 0 ||
  rebase_setupfile(rebase, HEAD_NAME_FILE, 0, "%s\n", orig_head_name) < 0 ||
  rebase_setupfile(rebase, ONTO_FILE, 0, "%.*s\n", GIT_OID_HEXSZ, onto) < 0 ||
  rebase_setupfile(rebase, ORIG_HEAD_FILE, 0, "%.*s\n", GIT_OID_HEXSZ, orig_head) < 0 ||
  rebase_setupfile(rebase, QUIET_FILE, 0, rebase->quiet ? "t\n" : "\n") < 0)
  return -1;

 return rebase_setupfiles_merge(rebase);
}
