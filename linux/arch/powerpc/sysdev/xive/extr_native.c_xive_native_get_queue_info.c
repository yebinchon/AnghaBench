
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
typedef void* u32 ;
typedef scalar_t__ s64 ;
typedef int __be64 ;
typedef int __be32 ;


 int EIO ;
 void* be32_to_cpu (int ) ;
 void* be64_to_cpu (int ) ;
 scalar_t__ opal_xive_get_queue_info (void*,void*,int *,int *,int *,int *,int *) ;
 int pr_err (char*,void*,void*,scalar_t__) ;

int xive_native_get_queue_info(u32 vp_id, u32 prio,
          u64 *out_qpage,
          u64 *out_qsize,
          u64 *out_qeoi_page,
          u32 *out_escalate_irq,
          u64 *out_qflags)
{
 __be64 qpage;
 __be64 qsize;
 __be64 qeoi_page;
 __be32 escalate_irq;
 __be64 qflags;
 s64 rc;

 rc = opal_xive_get_queue_info(vp_id, prio, &qpage, &qsize,
          &qeoi_page, &escalate_irq, &qflags);
 if (rc) {
  pr_err("OPAL failed to get queue info for VCPU %d/%d : %lld\n",
         vp_id, prio, rc);
  return -EIO;
 }

 if (out_qpage)
  *out_qpage = be64_to_cpu(qpage);
 if (out_qsize)
  *out_qsize = be32_to_cpu(qsize);
 if (out_qeoi_page)
  *out_qeoi_page = be64_to_cpu(qeoi_page);
 if (out_escalate_irq)
  *out_escalate_irq = be32_to_cpu(escalate_irq);
 if (out_qflags)
  *out_qflags = be64_to_cpu(qflags);

 return 0;
}
