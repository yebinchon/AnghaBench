
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtrng_info {int busy; int data_avail; int have_data; scalar_t__ hwrng_removed; } ;
struct hwrng {scalar_t__ priv; } ;


 int ENODEV ;
 int register_buffer (struct virtrng_info*,void*,size_t) ;
 int reinit_completion (int *) ;
 int wait_for_completion_killable (int *) ;

__attribute__((used)) static int virtio_read(struct hwrng *rng, void *buf, size_t size, bool wait)
{
 int ret;
 struct virtrng_info *vi = (struct virtrng_info *)rng->priv;

 if (vi->hwrng_removed)
  return -ENODEV;

 if (!vi->busy) {
  vi->busy = 1;
  reinit_completion(&vi->have_data);
  register_buffer(vi, buf, size);
 }

 if (!wait)
  return 0;

 ret = wait_for_completion_killable(&vi->have_data);
 if (ret < 0)
  return ret;

 vi->busy = 0;

 return vi->data_avail;
}
