
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {int * preset_enable; } ;
struct counter_device {struct quad8_iio* priv; } ;
struct counter_count {size_t id; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t quad8_count_preset_enable_read(struct counter_device *counter,
 struct counter_count *count, void *private, char *buf)
{
 const struct quad8_iio *const priv = counter->priv;

 return sprintf(buf, "%u\n", !priv->preset_enable[count->id]);
}
