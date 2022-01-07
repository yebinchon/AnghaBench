
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t len; size_t buf; } ;
struct buffer {size_t posn; TYPE_1__ buf; } ;


 int memcpy (char*,size_t,size_t) ;

size_t fread_buffer(char *ptr, size_t eltsize, size_t nmemb, void *buffer_)
{
 size_t size = eltsize * nmemb;
 struct buffer *buffer = buffer_;

 if (size > buffer->buf.len - buffer->posn)
  size = buffer->buf.len - buffer->posn;
 memcpy(ptr, buffer->buf.buf + buffer->posn, size);
 buffer->posn += size;

 return size / eltsize;
}
