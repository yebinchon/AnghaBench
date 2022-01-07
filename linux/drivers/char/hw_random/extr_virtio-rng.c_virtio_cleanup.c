
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtrng_info {int have_data; scalar_t__ busy; } ;
struct hwrng {scalar_t__ priv; } ;


 int wait_for_completion (int *) ;

__attribute__((used)) static void virtio_cleanup(struct hwrng *rng)
{
 struct virtrng_info *vi = (struct virtrng_info *)rng->priv;

 if (vi->busy)
  wait_for_completion(&vi->have_data);
}
