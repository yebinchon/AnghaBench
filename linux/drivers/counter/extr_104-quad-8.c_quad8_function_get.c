
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad8_iio {unsigned int* quadrature_mode; unsigned int* quadrature_scale; } ;
struct counter_device {struct quad8_iio* priv; } ;
struct counter_count {int id; } ;


 size_t QUAD8_COUNT_FUNCTION_PULSE_DIRECTION ;
 size_t QUAD8_COUNT_FUNCTION_QUADRATURE_X1 ;
 size_t QUAD8_COUNT_FUNCTION_QUADRATURE_X2 ;
 size_t QUAD8_COUNT_FUNCTION_QUADRATURE_X4 ;

__attribute__((used)) static int quad8_function_get(struct counter_device *counter,
 struct counter_count *count, size_t *function)
{
 const struct quad8_iio *const priv = counter->priv;
 const int id = count->id;
 const unsigned int quadrature_mode = priv->quadrature_mode[id];
 const unsigned int scale = priv->quadrature_scale[id];

 if (quadrature_mode)
  switch (scale) {
  case 0:
   *function = QUAD8_COUNT_FUNCTION_QUADRATURE_X1;
   break;
  case 1:
   *function = QUAD8_COUNT_FUNCTION_QUADRATURE_X2;
   break;
  case 2:
   *function = QUAD8_COUNT_FUNCTION_QUADRATURE_X4;
   break;
  }
 else
  *function = QUAD8_COUNT_FUNCTION_PULSE_DIRECTION;

 return 0;
}
