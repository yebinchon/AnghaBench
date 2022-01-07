
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {int image_format; } ;


 int rbd_assert (int ) ;
 int rbd_dev_v1_header_info (struct rbd_device*) ;
 int rbd_dev_v2_header_info (struct rbd_device*) ;
 int rbd_image_format_valid (int) ;

__attribute__((used)) static int rbd_dev_header_info(struct rbd_device *rbd_dev)
{
 rbd_assert(rbd_image_format_valid(rbd_dev->image_format));

 if (rbd_dev->image_format == 1)
  return rbd_dev_v1_header_info(rbd_dev);

 return rbd_dev_v2_header_info(rbd_dev);
}
