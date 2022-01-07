
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int git_oid ;
typedef scalar_t__ git_off_t ;
typedef int git_odb_stream ;
typedef int git_odb ;
typedef int buffer ;


 int FILEIO_BUFSIZE ;
 int GIT_ERROR_OS ;
 int GIT_OBJECT_BLOB ;
 int git_error_set (int ,char*) ;
 int git_futils_open_ro (char const*) ;
 int git_odb_open_wstream (int **,int *,scalar_t__,int ) ;
 int git_odb_stream_finalize_write (int *,int *) ;
 int git_odb_stream_free (int *) ;
 int git_odb_stream_write (int *,char*,scalar_t__) ;
 int p_close (int) ;
 scalar_t__ p_read (int,char*,int) ;

__attribute__((used)) static int write_file_stream(
 git_oid *id, git_odb *odb, const char *path, git_off_t file_size)
{
 int fd, error;
 char buffer[FILEIO_BUFSIZE];
 git_odb_stream *stream = ((void*)0);
 ssize_t read_len = -1;
 git_off_t written = 0;

 if ((error = git_odb_open_wstream(
   &stream, odb, file_size, GIT_OBJECT_BLOB)) < 0)
  return error;

 if ((fd = git_futils_open_ro(path)) < 0) {
  git_odb_stream_free(stream);
  return -1;
 }

 while (!error && (read_len = p_read(fd, buffer, sizeof(buffer))) > 0) {
  error = git_odb_stream_write(stream, buffer, read_len);
  written += read_len;
 }

 p_close(fd);

 if (written != file_size || read_len < 0) {
  git_error_set(GIT_ERROR_OS, "failed to read file into stream");
  error = -1;
 }

 if (!error)
  error = git_odb_stream_finalize_write(id, stream);

 git_odb_stream_free(stream);
 return error;
}
