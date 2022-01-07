
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int odb; } ;
typedef TYPE_2__ git_revwalk ;
struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_14__ {TYPE_1__ cached; } ;
typedef TYPE_3__ git_odb_object ;
struct TYPE_15__ {int oid; scalar_t__ parsed; } ;
typedef TYPE_4__ git_commit_list_node ;


 int GIT_ERROR_INVALID ;
 scalar_t__ GIT_OBJECT_COMMIT ;
 int commit_quick_parse (TYPE_2__*,TYPE_4__*,TYPE_3__*) ;
 int git_error_set (int ,char*) ;
 int git_odb_object_free (TYPE_3__*) ;
 int git_odb_read (TYPE_3__**,int ,int *) ;

int git_commit_list_parse(git_revwalk *walk, git_commit_list_node *commit)
{
 git_odb_object *obj;
 int error;

 if (commit->parsed)
  return 0;

 if ((error = git_odb_read(&obj, walk->odb, &commit->oid)) < 0)
  return error;

 if (obj->cached.type != GIT_OBJECT_COMMIT) {
  git_error_set(GIT_ERROR_INVALID, "object is no commit object");
  error = -1;
 } else
  error = commit_quick_parse(walk, commit, obj);

 git_odb_object_free(obj);
 return error;
}
