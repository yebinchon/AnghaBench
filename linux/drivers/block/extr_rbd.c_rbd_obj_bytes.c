
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct rbd_image_header {unsigned int obj_order; } ;



__attribute__((used)) static u32 rbd_obj_bytes(struct rbd_image_header *header)
{
 return 1U << header->obj_order;
}
