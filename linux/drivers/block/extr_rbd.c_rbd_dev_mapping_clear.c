
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ features; scalar_t__ size; } ;
struct rbd_device {TYPE_1__ mapping; } ;



__attribute__((used)) static void rbd_dev_mapping_clear(struct rbd_device *rbd_dev)
{
 rbd_dev->mapping.size = 0;
 rbd_dev->mapping.features = 0;
}
