
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ insert_by_date; scalar_t__ uninteresting; scalar_t__ from_glob; } ;
typedef TYPE_1__ git_revwalk__push_options ;
struct TYPE_11__ {int limited; int did_hide; int did_push; int * user_input; int repo; } ;
typedef TYPE_2__ git_revwalk ;
typedef int git_oid ;
typedef int git_object ;
struct TYPE_12__ {scalar_t__ uninteresting; } ;
typedef TYPE_3__ git_commit_list_node ;
typedef int git_commit_list ;


 int GIT_EINVALIDSPEC ;
 int GIT_ENOTFOUND ;
 int GIT_EPEEL ;
 int GIT_ERROR_INVALID ;
 int GIT_OBJECT_ANY ;
 int GIT_OBJECT_COMMIT ;
 int * git_commit_list_insert (TYPE_3__*,int **) ;
 int * git_commit_list_insert_by_date (TYPE_3__*,int **) ;
 int git_error_set (int ,char*) ;
 int git_error_set_oom () ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_object_lookup (int **,int ,int const*,int ) ;
 int git_object_peel (int **,int *,int ) ;
 int git_oid_cpy (int *,int ) ;
 TYPE_3__* git_revwalk__commit_lookup (TYPE_2__*,int *) ;

int git_revwalk__push_commit(git_revwalk *walk, const git_oid *oid, const git_revwalk__push_options *opts)
{
 git_oid commit_id;
 int error;
 git_object *obj, *oobj;
 git_commit_list_node *commit;
 git_commit_list *list;

 if ((error = git_object_lookup(&oobj, walk->repo, oid, GIT_OBJECT_ANY)) < 0)
  return error;

 error = git_object_peel(&obj, oobj, GIT_OBJECT_COMMIT);
 git_object_free(oobj);

 if (error == GIT_ENOTFOUND || error == GIT_EINVALIDSPEC || error == GIT_EPEEL) {

  if (opts->from_glob)
   return 0;

  git_error_set(GIT_ERROR_INVALID, "object is not a committish");
  return -1;
 }
 if (error < 0)
  return error;

 git_oid_cpy(&commit_id, git_object_id(obj));
 git_object_free(obj);

 commit = git_revwalk__commit_lookup(walk, &commit_id);
 if (commit == ((void*)0))
  return -1;


 if (commit->uninteresting)
  return 0;

 if (opts->uninteresting) {
  walk->limited = 1;
  walk->did_hide = 1;
 } else {
  walk->did_push = 1;
 }

 commit->uninteresting = opts->uninteresting;
 list = walk->user_input;
 if ((opts->insert_by_date &&
     git_commit_list_insert_by_date(commit, &list) == ((void*)0)) ||
     git_commit_list_insert(commit, &list) == ((void*)0)) {
  git_error_set_oom();
  return -1;
 }

 walk->user_input = list;

 return 0;
}
