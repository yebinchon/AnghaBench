
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ ignore_ip_idx; } ;
struct TYPE_7__ {int excluded_ip; } ;
struct TYPE_6__ {int host; } ;
typedef TYPE_1__ GLogItem ;
typedef TYPE_2__ GLog ;


 TYPE_5__ conf ;
 int ht_insert_genstats (char*,int) ;
 scalar_t__ ip_in_range (int ) ;

__attribute__((used)) static int
excluded_ip (GLog * glog, GLogItem * logitem)
{
  if (conf.ignore_ip_idx && ip_in_range (logitem->host)) {
    glog->excluded_ip++;



    return 0;
  }
  return 1;
}
