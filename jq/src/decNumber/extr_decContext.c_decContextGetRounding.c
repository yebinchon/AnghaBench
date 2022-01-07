
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum rounding { ____Placeholder_rounding } rounding ;
struct TYPE_3__ {int round; } ;
typedef TYPE_1__ decContext ;



enum rounding decContextGetRounding(decContext *context) {
  return context->round;
  }
