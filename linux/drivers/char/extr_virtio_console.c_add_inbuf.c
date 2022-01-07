
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int num_free; } ;
struct scatterlist {int dummy; } ;
struct port_buffer {int size; int buf; } ;


 int GFP_ATOMIC ;
 int sg_init_one (struct scatterlist*,int ,int ) ;
 int virtqueue_add_inbuf (struct virtqueue*,struct scatterlist*,int,struct port_buffer*,int ) ;
 int virtqueue_kick (struct virtqueue*) ;

__attribute__((used)) static int add_inbuf(struct virtqueue *vq, struct port_buffer *buf)
{
 struct scatterlist sg[1];
 int ret;

 sg_init_one(sg, buf->buf, buf->size);

 ret = virtqueue_add_inbuf(vq, sg, 1, buf, GFP_ATOMIC);
 virtqueue_kick(vq);
 if (!ret)
  ret = vq->num_free;
 return ret;
}
