
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_device_id {int dummy; } ;
struct vio_dev {int dummy; } ;


 int hwrng_register (int *) ;
 int pseries_rng ;

__attribute__((used)) static int pseries_rng_probe(struct vio_dev *dev,
  const struct vio_device_id *id)
{
 return hwrng_register(&pseries_rng);
}
