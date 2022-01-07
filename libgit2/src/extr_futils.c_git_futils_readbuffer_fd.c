
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ssize_t ;
typedef int git_file ;
struct TYPE_6__ {char* ptr; size_t size; } ;
typedef TYPE_1__ git_buf ;


 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 int GIT_ERROR_INVALID ;
 int GIT_ERROR_OS ;
 int git__is_ssizet (size_t) ;
 int git_buf_clear (TYPE_1__*) ;
 int git_buf_dispose (TYPE_1__*) ;
 scalar_t__ git_buf_grow (TYPE_1__*,size_t) ;
 int git_error_set (int ,char*) ;
 size_t p_read (int ,char*,size_t) ;

int git_futils_readbuffer_fd(git_buf *buf, git_file fd, size_t len)
{
 ssize_t read_size = 0;
 size_t alloc_len;

 git_buf_clear(buf);

 if (!git__is_ssizet(len)) {
  git_error_set(GIT_ERROR_INVALID, "read too large");
  return -1;
 }

 GIT_ERROR_CHECK_ALLOC_ADD(&alloc_len, len, 1);
 if (git_buf_grow(buf, alloc_len) < 0)
  return -1;


 read_size = p_read(fd, buf->ptr, len);

 if (read_size != (ssize_t)len) {
  git_error_set(GIT_ERROR_OS, "failed to read descriptor");
  git_buf_dispose(buf);
  return -1;
 }

 buf->ptr[read_size] = '\0';
 buf->size = read_size;

 return 0;
}
