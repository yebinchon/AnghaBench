
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status; } ;
typedef TYPE_1__ decContext ;



decContext *decContextZeroStatus(decContext *context) {
  context->status=0;
  return context;
  }
