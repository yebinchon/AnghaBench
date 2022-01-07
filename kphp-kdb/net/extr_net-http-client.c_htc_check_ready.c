
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_2__ {int (* htc_check_ready ) (struct connection*) ;} ;


 TYPE_1__* HTC_FUNC (struct connection*) ;
 int stub1 (struct connection*) ;

int htc_check_ready (struct connection *c) {
  return HTC_FUNC(c)->htc_check_ready (c);
}
