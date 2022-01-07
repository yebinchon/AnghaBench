
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_buffer {int dummy; } ;
struct port {int outvq_full; int out_vq; int portdev; } ;


 int free_buf (struct port_buffer*,int) ;
 struct port_buffer* virtqueue_get_buf (int ,unsigned int*) ;

__attribute__((used)) static void reclaim_consumed_buffers(struct port *port)
{
 struct port_buffer *buf;
 unsigned int len;

 if (!port->portdev) {

  return;
 }
 while ((buf = virtqueue_get_buf(port->out_vq, &len))) {
  free_buf(buf, 0);
  port->outvq_full = 0;
 }
}
