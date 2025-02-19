
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {int base; } ;
struct counter_device {struct quad8_iio* priv; } ;
struct counter_count {int id; } ;
typedef enum counter_count_direction { ____Placeholder_counter_count_direction } counter_count_direction ;


 int COUNTER_COUNT_DIRECTION_BACKWARD ;
 int COUNTER_COUNT_DIRECTION_FORWARD ;
 unsigned int QUAD8_FLAG_UD ;
 unsigned int inb (unsigned int const) ;

__attribute__((used)) static void quad8_direction_get(struct counter_device *counter,
 struct counter_count *count, enum counter_count_direction *direction)
{
 const struct quad8_iio *const priv = counter->priv;
 unsigned int ud_flag;
 const unsigned int flag_addr = priv->base + 2 * count->id + 1;


 ud_flag = inb(flag_addr) & QUAD8_FLAG_UD;

 *direction = (ud_flag) ? COUNTER_COUNT_DIRECTION_FORWARD :
  COUNTER_COUNT_DIRECTION_BACKWARD;
}
