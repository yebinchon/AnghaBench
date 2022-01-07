
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {int* index_polarity; int base; size_t* synchronous_mode; int * quadrature_mode; } ;
struct counter_signal {int id; } ;
struct counter_device {struct quad8_iio* priv; } ;


 int EINVAL ;
 unsigned int const QUAD8_CTR_IDR ;
 int outb (unsigned int const,int const) ;

__attribute__((used)) static int quad8_synchronous_mode_set(struct counter_device *counter,
 struct counter_signal *signal, size_t synchronous_mode)
{
 struct quad8_iio *const priv = counter->priv;
 const size_t channel_id = signal->id - 16;
 const unsigned int idr_cfg = synchronous_mode |
  priv->index_polarity[channel_id] << 1;
 const int base_offset = priv->base + 2 * channel_id + 1;


 if (synchronous_mode && !priv->quadrature_mode[channel_id])
  return -EINVAL;

 priv->synchronous_mode[channel_id] = synchronous_mode;


 outb(QUAD8_CTR_IDR | idr_cfg, base_offset);

 return 0;
}
