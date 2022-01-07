
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {int* count_mode; } ;
struct counter_device {struct quad8_iio* priv; } ;
struct counter_count {size_t id; } ;
typedef size_t ssize_t ;


 size_t quad8_count_preset_write (struct counter_device*,struct counter_count*,void*,char const*,size_t) ;

__attribute__((used)) static ssize_t quad8_count_ceiling_write(struct counter_device *counter,
 struct counter_count *count, void *private, const char *buf, size_t len)
{
 struct quad8_iio *const priv = counter->priv;


 switch (priv->count_mode[count->id]) {
 case 1:
 case 3:
  return quad8_count_preset_write(counter, count, private, buf,
      len);
 }

 return len;
}
