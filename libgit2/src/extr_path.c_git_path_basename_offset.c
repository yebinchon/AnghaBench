
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ssize_t ;
struct TYPE_4__ {scalar_t__ size; char* ptr; } ;
typedef TYPE_1__ git_buf ;


 size_t git_buf_rfind_next (TYPE_1__*,char) ;

size_t git_path_basename_offset(git_buf *buffer)
{
 ssize_t slash;

 if (!buffer || buffer->size <= 0)
  return 0;

 slash = git_buf_rfind_next(buffer, '/');

 if (slash >= 0 && buffer->ptr[slash] == '/')
  return (size_t)(slash + 1);

 return 0;
}
