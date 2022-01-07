
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {int* count_mode; } ;
struct counter_device {struct quad8_iio* priv; } ;
struct counter_count {size_t id; } ;
typedef int ssize_t ;


 int quad8_count_preset_read (struct counter_device*,struct counter_count*,void*,char*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t quad8_count_ceiling_read(struct counter_device *counter,
 struct counter_count *count, void *private, char *buf)
{
 const struct quad8_iio *const priv = counter->priv;


 switch (priv->count_mode[count->id]) {
 case 1:
 case 3:
  return quad8_count_preset_read(counter, count, private, buf);
 }


 return sprintf(buf, "33554431\n");
}
