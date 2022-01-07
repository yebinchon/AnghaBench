
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ip; } ;
struct rpc_target {TYPE_1__ PID; } ;


 struct rpc_target** Sarr ;
 int SarrPos ;
 int assert (int) ;

void __rpc_target_set_host (struct rpc_target *S) {
  if (!S->PID.ip) {
    assert (SarrPos < 10000);
    Sarr[SarrPos ++] = S;
  }
}
