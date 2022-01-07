
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_resource {scalar_t__ susp_nod; scalar_t__ susp_fen; scalar_t__ susp; } ;
struct drbd_device {struct drbd_resource* resource; } ;



__attribute__((used)) static inline int drbd_suspended(struct drbd_device *device)
{
 struct drbd_resource *resource = device->resource;

 return resource->susp || resource->susp_fen || resource->susp_nod;
}
