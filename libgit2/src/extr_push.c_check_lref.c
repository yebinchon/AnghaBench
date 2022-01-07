
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int repo; } ;
typedef TYPE_1__ git_push ;
typedef int git_object ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_INVALID ;
 int GIT_ERROR_REFERENCE ;
 int git_error_set (int ,char*,char*) ;
 int git_object_free (int *) ;
 int git_revparse_single (int **,int ,char*) ;

__attribute__((used)) static int check_lref(git_push *push, char *ref)
{

 git_object *obj;
 int error = git_revparse_single(&obj, push->repo, ref);
 git_object_free(obj);

 if (!error)
  return 0;

 if (error == GIT_ENOTFOUND)
  git_error_set(GIT_ERROR_REFERENCE,
   "src refspec '%s' does not match any existing object", ref);
 else
  git_error_set(GIT_ERROR_INVALID, "not a valid reference '%s'", ref);
 return -1;
}
