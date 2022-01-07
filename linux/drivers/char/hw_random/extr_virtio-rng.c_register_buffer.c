
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct virtrng_info {int vq; } ;
struct scatterlist {int dummy; } ;


 int GFP_KERNEL ;
 int sg_init_one (struct scatterlist*,int *,size_t) ;
 int virtqueue_add_inbuf (int ,struct scatterlist*,int,int *,int ) ;
 int virtqueue_kick (int ) ;

__attribute__((used)) static void register_buffer(struct virtrng_info *vi, u8 *buf, size_t size)
{
 struct scatterlist sg;

 sg_init_one(&sg, buf, size);


 virtqueue_add_inbuf(vi->vq, &sg, 1, buf, GFP_KERNEL);

 virtqueue_kick(vi->vq);
}
