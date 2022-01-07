
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ resp_size; } ;
typedef TYPE_1__ GLog ;


 char* filesize_str (float) ;

__attribute__((used)) static char *
get_str_bandwidth (GLog * glog)
{
  return filesize_str ((float) glog->resp_size);
}
