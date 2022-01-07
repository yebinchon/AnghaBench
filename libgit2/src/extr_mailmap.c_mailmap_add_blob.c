
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_repository ;
typedef int git_object ;
typedef int git_mailmap ;
struct TYPE_5__ {int size; int ptr; } ;
typedef TYPE_1__ git_buf ;
typedef int git_blob ;


 TYPE_1__ GIT_BUF_INIT ;
 int GIT_OBJECT_BLOB ;
 int assert (int) ;
 int git_blob__getbuf (TYPE_1__*,int *) ;
 int git_blob_free (int *) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_object_free (int *) ;
 int git_object_peel (int **,int *,int ) ;
 int git_revparse_single (int **,int *,char const*) ;
 int mailmap_add_buffer (int *,int ,int ) ;

__attribute__((used)) static int mailmap_add_blob(
 git_mailmap *mm, git_repository *repo, const char *rev)
{
 git_object *object = ((void*)0);
 git_blob *blob = ((void*)0);
 git_buf content = GIT_BUF_INIT;
 int error;

 assert(mm && repo);

 error = git_revparse_single(&object, repo, rev);
 if (error < 0)
  goto cleanup;

 error = git_object_peel((git_object **)&blob, object, GIT_OBJECT_BLOB);
 if (error < 0)
  goto cleanup;

 error = git_blob__getbuf(&content, blob);
 if (error < 0)
  goto cleanup;

 error = mailmap_add_buffer(mm, content.ptr, content.size);
 if (error < 0)
  goto cleanup;

cleanup:
 git_buf_dispose(&content);
 git_blob_free(blob);
 git_object_free(object);
 return error;
}
