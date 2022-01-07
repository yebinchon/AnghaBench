
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_vector ;
struct TYPE_7__ {size_t count; char** strings; int member_0; } ;
typedef TYPE_1__ git_strarray ;
struct TYPE_8__ {int repo; } ;
typedef TYPE_2__ git_remote ;


 int GIT_ERROR_CHECK_ALLOC (char*) ;
 char* git__strdup (char const*) ;
 int git_reference_list (TYPE_1__*,int ) ;
 int git_remote__matching_dst_refspec (TYPE_2__*,char const*) ;
 int git_strarray_free (TYPE_1__*) ;
 int git_vector_insert (int *,char*) ;

__attribute__((used)) static int prune_candidates(git_vector *candidates, git_remote *remote)
{
 git_strarray arr = { 0 };
 size_t i;
 int error;

 if ((error = git_reference_list(&arr, remote->repo)) < 0)
  return error;

 for (i = 0; i < arr.count; i++) {
  const char *refname = arr.strings[i];
  char *refname_dup;

  if (!git_remote__matching_dst_refspec(remote, refname))
   continue;

  refname_dup = git__strdup(refname);
  GIT_ERROR_CHECK_ALLOC(refname_dup);

  if ((error = git_vector_insert(candidates, refname_dup)) < 0)
   goto out;
 }

out:
 git_strarray_free(&arr);
 return error;
}
