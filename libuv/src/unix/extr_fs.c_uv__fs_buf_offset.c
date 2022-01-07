
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; size_t base; } ;
typedef TYPE_1__ uv_buf_t ;



__attribute__((used)) static size_t uv__fs_buf_offset(uv_buf_t* bufs, size_t size) {
  size_t offset;

  for (offset = 0; size > 0 && bufs[offset].len <= size; ++offset)
    size -= bufs[offset].len;


  if (size > 0) {
    bufs[offset].base += size;
    bufs[offset].len -= size;
  }
  return offset;
}
