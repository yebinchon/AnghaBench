
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct virtblk_req {int dummy; } ;
struct scatterlist {int dummy; } ;


 int EIO ;

__attribute__((used)) static inline int virtblk_add_req_scsi(struct virtqueue *vq,
  struct virtblk_req *vbr, struct scatterlist *data_sg,
  bool have_data)
{
 return -EIO;
}
