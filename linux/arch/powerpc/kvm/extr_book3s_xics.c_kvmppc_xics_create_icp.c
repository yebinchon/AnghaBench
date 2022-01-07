
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* pending_pri; void* mfrr; } ;
struct kvmppc_icp {unsigned long server_num; TYPE_1__ state; struct kvm_vcpu* vcpu; } ;
struct TYPE_6__ {struct kvmppc_icp* icp; } ;
struct kvm_vcpu {int vcpu_id; TYPE_2__ arch; TYPE_4__* kvm; } ;
struct TYPE_7__ {int xics; } ;
struct TYPE_8__ {TYPE_3__ arch; } ;


 int EEXIST ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* MASKED ;
 int XICS_DBG (char*,int ) ;
 scalar_t__ kvmppc_xics_find_server (TYPE_4__*,unsigned long) ;
 struct kvmppc_icp* kzalloc (int,int ) ;

__attribute__((used)) static int kvmppc_xics_create_icp(struct kvm_vcpu *vcpu, unsigned long server_num)
{
 struct kvmppc_icp *icp;

 if (!vcpu->kvm->arch.xics)
  return -ENODEV;

 if (kvmppc_xics_find_server(vcpu->kvm, server_num))
  return -EEXIST;

 icp = kzalloc(sizeof(struct kvmppc_icp), GFP_KERNEL);
 if (!icp)
  return -ENOMEM;

 icp->vcpu = vcpu;
 icp->server_num = server_num;
 icp->state.mfrr = MASKED;
 icp->state.pending_pri = MASKED;
 vcpu->arch.icp = icp;

 XICS_DBG("created server for vcpu %d\n", vcpu->vcpu_id);

 return 0;
}
