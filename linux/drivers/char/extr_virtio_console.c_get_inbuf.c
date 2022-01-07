
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port_buffer {unsigned int len; scalar_t__ offset; } ;
struct TYPE_2__ {unsigned int bytes_received; } ;
struct port {TYPE_1__ stats; int in_vq; struct port_buffer* inbuf; } ;


 struct port_buffer* virtqueue_get_buf (int ,unsigned int*) ;

__attribute__((used)) static struct port_buffer *get_inbuf(struct port *port)
{
 struct port_buffer *buf;
 unsigned int len;

 if (port->inbuf)
  return port->inbuf;

 buf = virtqueue_get_buf(port->in_vq, &len);
 if (buf) {
  buf->len = len;
  buf->offset = 0;
  port->stats.bytes_received += len;
 }
 return buf;
}
