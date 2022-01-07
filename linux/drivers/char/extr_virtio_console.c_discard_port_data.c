
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port_buffer {scalar_t__ offset; scalar_t__ len; } ;
struct TYPE_2__ {int bytes_discarded; } ;
struct port {int dev; int * inbuf; int in_vq; TYPE_1__ stats; int portdev; } ;


 scalar_t__ add_inbuf (int ,struct port_buffer*) ;
 int dev_warn (int ,char*,unsigned int) ;
 int free_buf (struct port_buffer*,int) ;
 struct port_buffer* get_inbuf (struct port*) ;

__attribute__((used)) static void discard_port_data(struct port *port)
{
 struct port_buffer *buf;
 unsigned int err;

 if (!port->portdev) {

  return;
 }
 buf = get_inbuf(port);

 err = 0;
 while (buf) {
  port->stats.bytes_discarded += buf->len - buf->offset;
  if (add_inbuf(port->in_vq, buf) < 0) {
   err++;
   free_buf(buf, 0);
  }
  port->inbuf = ((void*)0);
  buf = get_inbuf(port);
 }
 if (err)
  dev_warn(port->dev, "Errors adding %d buffers back to vq\n",
    err);
}
