
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;
typedef int git_odb_stream ;
typedef int git_odb ;


 int GIT_OBJECT_BLOB ;
 int assert (int) ;
 int git_odb_open_wstream (int **,int *,size_t,int ) ;
 int git_odb_stream_finalize_write (int *,int *) ;
 int git_odb_stream_free (int *) ;
 int git_odb_stream_write (int *,void const*,size_t) ;
 int git_repository_odb__weakptr (int **,int *) ;

int git_blob_create_from_buffer(
 git_oid *id, git_repository *repo, const void *buffer, size_t len)
{
 int error;
 git_odb *odb;
 git_odb_stream *stream;

 assert(id && repo);

 if ((error = git_repository_odb__weakptr(&odb, repo)) < 0 ||
  (error = git_odb_open_wstream(&stream, odb, len, GIT_OBJECT_BLOB)) < 0)
  return error;

 if ((error = git_odb_stream_write(stream, buffer, len)) == 0)
  error = git_odb_stream_finalize_write(id, stream);

 git_odb_stream_free(stream);
 return error;
}
