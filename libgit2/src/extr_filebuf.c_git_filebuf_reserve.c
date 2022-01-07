
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t buf_size; size_t buf_pos; void* buffer; int last_error; } ;
typedef TYPE_1__ git_filebuf ;


 int BUFERR_MEM ;
 int ENSURE_BUF_OK (TYPE_1__*) ;
 scalar_t__ flush_buffer (TYPE_1__*) ;

int git_filebuf_reserve(git_filebuf *file, void **buffer, size_t len)
{
 size_t space_left = file->buf_size - file->buf_pos;

 *buffer = ((void*)0);

 ENSURE_BUF_OK(file);

 if (len > file->buf_size) {
  file->last_error = BUFERR_MEM;
  return -1;
 }

 if (space_left <= len) {
  if (flush_buffer(file) < 0)
   return -1;
 }

 *buffer = (file->buffer + file->buf_pos);
 file->buf_pos += len;

 return 0;
}
