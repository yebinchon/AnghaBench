
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_object ;
typedef int git_commit ;
typedef int git_blob ;
struct TYPE_5__ {int refcnt; int path; int * blob; int * commit; } ;
typedef TYPE_1__ git_blame__origin ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 int GIT_OBJECT_BLOB ;
 TYPE_1__* git__calloc (int,size_t) ;
 int git_object_lookup_bypath (int **,int *,char const*,int ) ;
 int strcpy (int ,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int make_origin(git_blame__origin **out, git_commit *commit, const char *path)
{
 git_blame__origin *o;
 git_object *blob;
 size_t path_len = strlen(path), alloc_len;
 int error = 0;

 if ((error = git_object_lookup_bypath(&blob, (git_object*)commit,
   path, GIT_OBJECT_BLOB)) < 0)
  return error;

 GIT_ERROR_CHECK_ALLOC_ADD(&alloc_len, sizeof(*o), path_len);
 GIT_ERROR_CHECK_ALLOC_ADD(&alloc_len, alloc_len, 1);
 o = git__calloc(1, alloc_len);
 GIT_ERROR_CHECK_ALLOC(o);

 o->commit = commit;
 o->blob = (git_blob *) blob;
 o->refcnt = 1;
 strcpy(o->path, path);

 *out = o;

 return 0;
}
