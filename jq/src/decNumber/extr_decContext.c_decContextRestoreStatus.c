
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uInt ;
struct TYPE_4__ {int status; } ;
typedef TYPE_1__ decContext ;



decContext *decContextRestoreStatus(decContext *context,
                                    uInt newstatus, uInt mask) {
  context->status&=~mask;
  context->status|=(mask&newstatus);
  return context;
  }
