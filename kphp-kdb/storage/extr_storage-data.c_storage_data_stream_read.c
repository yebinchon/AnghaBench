
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct storage_data_stream {scalar_t__ bytes_read; scalar_t__ size; scalar_t__ fd; long long ptr; } ;


 int STORAGE_ERR_READ ;
 int memcpy (void*,long long,long long) ;
 long long read (scalar_t__,void*,long long) ;
 int vkprintf (int,char*,long long) ;

__attribute__((used)) static int storage_data_stream_read (struct storage_data_stream *self, void *a, long long len) {
  vkprintf (4, "storage_data_stream_read (len: %lld)\n", len);
  if (len + self->bytes_read > self->size) {
    return STORAGE_ERR_READ;
  }
  if (self->fd >= 0) {
    if (read (self->fd, a, len) != len) {
      return STORAGE_ERR_READ;
    }
  } else {
    memcpy (a, self->ptr, len);
    self->ptr += len;
  }
  self->bytes_read += len;
  return 0;
}
