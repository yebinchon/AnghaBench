
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_BUFFER_SIZE ;
 int assert (int) ;
 int flush_out () ;
 int memcpy (scalar_t__,void const*,int) ;
 scalar_t__ obuff ;
 scalar_t__ roptr ;
 scalar_t__ woptr ;
 int wpos ;

__attribute__((used)) static void write_out (const void *data, int size) {
  int len;
  assert ((unsigned) size < FILE_BUFFER_SIZE * 8);
  if (!woptr) { woptr = roptr = obuff; }
  while (size > 0) {
    len = obuff + FILE_BUFFER_SIZE - woptr;
    if (len > size) { len = size; }
    assert (len > 0);
    memcpy (woptr, data, len);
    data = ((char *) data) + len;
    woptr += len;
    size -= len;
    wpos += len;
    if (woptr == obuff + FILE_BUFFER_SIZE) {
      flush_out();
    }
  }
}
