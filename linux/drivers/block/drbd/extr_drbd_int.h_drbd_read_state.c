
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union drbd_state {int susp_fen; int susp_nod; int susp; int i; } ;
struct drbd_resource {int susp_fen; int susp_nod; int susp; } ;
struct TYPE_2__ {int i; } ;
struct drbd_device {TYPE_1__ state; struct drbd_resource* resource; } ;



__attribute__((used)) static inline union drbd_state drbd_read_state(struct drbd_device *device)
{
 struct drbd_resource *resource = device->resource;
 union drbd_state rv;

 rv.i = device->state.i;
 rv.susp = resource->susp;
 rv.susp_nod = resource->susp_nod;
 rv.susp_fen = resource->susp_fen;

 return rv;
}
