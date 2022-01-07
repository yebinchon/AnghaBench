
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t write_queue_size; } ;
typedef TYPE_1__ uv_stream_t ;



size_t uv_stream_get_write_queue_size(const uv_stream_t* stream) {
  return stream->write_queue_size;
}
