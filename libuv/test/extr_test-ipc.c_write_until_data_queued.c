
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uv_stream_t ;
struct TYPE_2__ {scalar_t__ write_queue_size; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int ASSERT (int) ;
 TYPE_1__ channel ;
 int closed_handle_large_write_cb ;
 int large_buf ;
 int uv_write (int *,int *,int *,int,int ) ;
 int * write_reqs ;

__attribute__((used)) static unsigned int write_until_data_queued() {
  unsigned int i;
  int r;

  i = 0;
  do {
    r = uv_write(&write_reqs[i],
                 (uv_stream_t*)&channel,
                 &large_buf,
                 1,
                 closed_handle_large_write_cb);
    ASSERT(r == 0);
    i++;
  } while (channel.write_queue_size == 0 &&
           i < ARRAY_SIZE(write_reqs));

  return channel.write_queue_size;
}
