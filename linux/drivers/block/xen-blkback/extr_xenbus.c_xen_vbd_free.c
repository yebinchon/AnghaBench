
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_vbd {int * bdev; scalar_t__ readonly; } ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 int blkdev_put (int *,int ) ;

__attribute__((used)) static void xen_vbd_free(struct xen_vbd *vbd)
{
 if (vbd->bdev)
  blkdev_put(vbd->bdev, vbd->readonly ? FMODE_READ : FMODE_WRITE);
 vbd->bdev = ((void*)0);
}
