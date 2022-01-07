
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ num_tests; } ;
struct TYPE_4__ {int processed; } ;
typedef TYPE_1__ GLog ;


 TYPE_3__ conf ;
 int ht_replace_genstats (char*,int ) ;

__attribute__((used)) static void
uncount_processed (GLog * glog)
{
  glog->processed -= conf.num_tests;



}
