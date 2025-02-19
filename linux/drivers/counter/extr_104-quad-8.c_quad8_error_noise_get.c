
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {int base; } ;
struct counter_device {struct quad8_iio* priv; } ;
struct counter_count {int id; } ;


 int QUAD8_FLAG_E ;
 int inb (int const) ;

__attribute__((used)) static int quad8_error_noise_get(struct counter_device *counter,
 struct counter_count *count, size_t *noise_error)
{
 const struct quad8_iio *const priv = counter->priv;
 const int base_offset = priv->base + 2 * count->id + 1;

 *noise_error = !!(inb(base_offset) & QUAD8_FLAG_E);

 return 0;
}
