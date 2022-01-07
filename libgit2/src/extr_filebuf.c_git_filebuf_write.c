
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* write ) (TYPE_1__*,void*,size_t) ;size_t buf_size; size_t buf_pos; scalar_t__ do_not_buffer; } ;
typedef TYPE_1__ git_filebuf ;


 int ENSURE_BUF_OK (TYPE_1__*) ;
 int add_to_cache (TYPE_1__*,unsigned char const*,size_t) ;
 scalar_t__ flush_buffer (TYPE_1__*) ;
 int stub1 (TYPE_1__*,void*,size_t) ;

int git_filebuf_write(git_filebuf *file, const void *buff, size_t len)
{
 const unsigned char *buf = buff;

 ENSURE_BUF_OK(file);

 if (file->do_not_buffer)
  return file->write(file, (void *)buff, len);

 for (;;) {
  size_t space_left = file->buf_size - file->buf_pos;


  if (space_left > len) {
   add_to_cache(file, buf, len);
   return 0;
  }

  add_to_cache(file, buf, space_left);
  if (flush_buffer(file) < 0)
   return -1;

  len -= space_left;
  buf += space_left;
 }
}
