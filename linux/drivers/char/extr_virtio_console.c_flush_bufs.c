
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct port_buffer {int dummy; } ;


 int free_buf (struct port_buffer*,int) ;
 struct port_buffer* virtqueue_get_buf (struct virtqueue*,unsigned int*) ;

__attribute__((used)) static void flush_bufs(struct virtqueue *vq, bool can_sleep)
{
 struct port_buffer *buf;
 unsigned int len;

 while ((buf = virtqueue_get_buf(vq, &len)))
  free_buf(buf, can_sleep);
}
