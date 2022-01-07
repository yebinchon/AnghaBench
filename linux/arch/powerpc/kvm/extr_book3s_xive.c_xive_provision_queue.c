
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct xive_q {int qpage; } ;
struct kvmppc_xive_vcpu {int server_num; int vp_id; struct xive_q* queues; struct kvmppc_xive* xive; } ;
struct kvmppc_xive {int q_order; int q_page_order; } ;
struct TYPE_2__ {struct kvmppc_xive_vcpu* xive_vcpu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int __be32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int ) ;
 scalar_t__ __get_free_pages (int ,int ) ;
 int memset (void*,int ,int) ;
 int pr_err (char*,size_t,int ) ;
 int xive_native_configure_queue (int ,struct xive_q*,size_t,void*,int,int) ;

__attribute__((used)) static int xive_provision_queue(struct kvm_vcpu *vcpu, u8 prio)
{
 struct kvmppc_xive_vcpu *xc = vcpu->arch.xive_vcpu;
 struct kvmppc_xive *xive = xc->xive;
 struct xive_q *q = &xc->queues[prio];
 void *qpage;
 int rc;

 if (WARN_ON(q->qpage))
  return 0;


 qpage = (__be32 *)__get_free_pages(GFP_KERNEL, xive->q_page_order);
 if (!qpage) {
  pr_err("Failed to allocate queue %d for VCPU %d\n",
         prio, xc->server_num);
  return -ENOMEM;
 }
 memset(qpage, 0, 1 << xive->q_order);
 rc = xive_native_configure_queue(xc->vp_id, q, prio, qpage,
      xive->q_order, 1);
 if (rc)
  pr_err("Failed to configure queue %d for VCPU %d\n",
         prio, xc->server_num);
 return rc;
}
