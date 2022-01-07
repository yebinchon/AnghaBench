
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int resp_size; } ;
typedef TYPE_1__ GLog ;


 int ht_insert_genstats_bw (char*,scalar_t__) ;

__attribute__((used)) static void
inc_resp_size (GLog * glog, uint64_t resp_size)
{
  glog->resp_size += resp_size;



}
