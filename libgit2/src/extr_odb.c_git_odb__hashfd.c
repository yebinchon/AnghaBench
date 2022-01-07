
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int hdr ;
typedef int git_oid ;
typedef int git_object_t ;
typedef int git_hash_ctx ;
typedef int git_file ;
typedef int buffer ;


 int FILEIO_BUFSIZE ;
 int GIT_ERROR_INVALID ;
 int GIT_ERROR_OS ;
 int git_error_set (int ,char*) ;
 int git_hash_ctx_cleanup (int *) ;
 int git_hash_ctx_init (int *) ;
 int git_hash_final (int *,int *) ;
 int git_hash_update (int *,char*,size_t) ;
 int git_object_typeisloose (int ) ;
 int git_odb__format_object_header (size_t*,char*,int,size_t,int ) ;
 size_t p_read (int ,char*,int) ;

int git_odb__hashfd(git_oid *out, git_file fd, size_t size, git_object_t type)
{
 size_t hdr_len;
 char hdr[64], buffer[FILEIO_BUFSIZE];
 git_hash_ctx ctx;
 ssize_t read_len = 0;
 int error = 0;

 if (!git_object_typeisloose(type)) {
  git_error_set(GIT_ERROR_INVALID, "invalid object type for hash");
  return -1;
 }

 if ((error = git_hash_ctx_init(&ctx)) < 0)
  return error;

 if ((error = git_odb__format_object_header(&hdr_len, hdr,
  sizeof(hdr), size, type)) < 0)
  goto done;

 if ((error = git_hash_update(&ctx, hdr, hdr_len)) < 0)
  goto done;

 while (size > 0 && (read_len = p_read(fd, buffer, sizeof(buffer))) > 0) {
  if ((error = git_hash_update(&ctx, buffer, read_len)) < 0)
   goto done;

  size -= read_len;
 }




 if (read_len < 0 || size > 0) {
  git_error_set(GIT_ERROR_OS, "error reading file for hashing");
  error = -1;

  goto done;
 }

 error = git_hash_final(out, &ctx);

done:
 git_hash_ctx_cleanup(&ctx);
 return error;
}
