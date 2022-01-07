
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long long resp_size; scalar_t__ valid; scalar_t__ processed; scalar_t__ invalid; } ;
typedef TYPE_1__ GLog ;



void
reset_struct (GLog * glog)
{
  glog->invalid = 0;
  glog->processed = 0;
  glog->resp_size = 0LL;
  glog->valid = 0;
}
