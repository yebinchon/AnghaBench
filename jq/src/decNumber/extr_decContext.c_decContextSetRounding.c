
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum rounding { ____Placeholder_rounding } rounding ;
struct TYPE_4__ {int round; } ;
typedef TYPE_1__ decContext ;



decContext *decContextSetRounding(decContext *context,
                                  enum rounding newround) {
  context->round=newround;
  return context;
  }
