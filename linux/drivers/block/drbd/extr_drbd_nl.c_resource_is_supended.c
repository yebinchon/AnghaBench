
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_resource {scalar_t__ susp_nod; scalar_t__ susp_fen; scalar_t__ susp; } ;



__attribute__((used)) static bool resource_is_supended(struct drbd_resource *resource)
{
 return resource->susp || resource->susp_fen || resource->susp_nod;
}
