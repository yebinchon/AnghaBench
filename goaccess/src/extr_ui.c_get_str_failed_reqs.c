
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int invalid; } ;
typedef TYPE_1__ GLog ;


 char* int2str (int ,int ) ;

__attribute__((used)) static char *
get_str_failed_reqs (GLog * glog)
{
  return int2str (glog->invalid, 0);
}
