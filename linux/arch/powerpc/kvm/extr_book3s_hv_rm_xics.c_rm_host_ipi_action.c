
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* vcpu_kick ) (void*) ;} ;


 int WARN (int,char*,int,void*) ;

 TYPE_1__* kvmppc_host_rm_ops_hv ;
 int stub1 (void*) ;

__attribute__((used)) static void rm_host_ipi_action(int action, void *data)
{
 switch (action) {
 case 128:
  kvmppc_host_rm_ops_hv->vcpu_kick(data);
  break;
 default:
  WARN(1, "Unexpected rm_action=%d data=%p\n", action, data);
  break;
 }

}
