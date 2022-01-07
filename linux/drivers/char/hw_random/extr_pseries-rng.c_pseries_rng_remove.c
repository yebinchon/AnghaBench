
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_dev {int dummy; } ;


 int hwrng_unregister (int *) ;
 int pseries_rng ;

__attribute__((used)) static int pseries_rng_remove(struct vio_dev *dev)
{
 hwrng_unregister(&pseries_rng);
 return 0;
}
