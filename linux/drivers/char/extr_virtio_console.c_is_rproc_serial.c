
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ device; } ;
struct virtio_device {TYPE_1__ id; } ;


 scalar_t__ VIRTIO_ID_RPROC_SERIAL ;
 scalar_t__ is_rproc_enabled ;

__attribute__((used)) static bool is_rproc_serial(const struct virtio_device *vdev)
{
 return is_rproc_enabled && vdev->id.device == VIRTIO_ID_RPROC_SERIAL;
}
