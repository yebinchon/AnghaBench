
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bandwidth; int serve_usecs; } ;
struct TYPE_3__ {scalar_t__ resp_size; void* valid; void* processed; void* invalid; void* excluded_ip; } ;


 TYPE_2__ conf ;
 TYPE_1__* glog ;
 void* ht_get_genstats (char*) ;
 scalar_t__ ht_get_genstats_bw (char*) ;

__attribute__((used)) static void
set_general_stats (void)
{
  glog->valid = glog->processed = glog->invalid = glog->excluded_ip = 0;
}
