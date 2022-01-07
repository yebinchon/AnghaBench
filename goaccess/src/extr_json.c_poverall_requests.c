
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int processed; } ;
typedef TYPE_1__ GLog ;
typedef int GJSON ;


 int OVERALL_REQ ;
 int pskeyival (int *,int ,int ,int,int ) ;

__attribute__((used)) static void
poverall_requests (GJSON * json, GLog * glog, int sp)
{
  pskeyival (json, OVERALL_REQ, glog->processed, sp, 0);
}
