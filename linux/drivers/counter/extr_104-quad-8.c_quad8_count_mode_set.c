
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {int base; size_t* count_mode; int* quadrature_scale; scalar_t__* quadrature_mode; } ;
struct counter_device {struct quad8_iio* priv; } ;
struct counter_count {int id; } ;






 unsigned int QUAD8_CTR_CMR ;
 int outb (unsigned int,int const) ;

__attribute__((used)) static int quad8_count_mode_set(struct counter_device *counter,
 struct counter_count *count, size_t cnt_mode)
{
 struct quad8_iio *const priv = counter->priv;
 unsigned int mode_cfg;
 const int base_offset = priv->base + 2 * count->id + 1;


 switch (cnt_mode) {
 case 129:
  cnt_mode = 0;
  break;
 case 128:
  cnt_mode = 1;
  break;
 case 130:
  cnt_mode = 2;
  break;
 case 131:
  cnt_mode = 3;
  break;
 }

 priv->count_mode[count->id] = cnt_mode;


 mode_cfg = cnt_mode << 1;


 if (priv->quadrature_mode[count->id])
  mode_cfg |= (priv->quadrature_scale[count->id] + 1) << 3;


 outb(QUAD8_CTR_CMR | mode_cfg, base_offset);

 return 0;
}
