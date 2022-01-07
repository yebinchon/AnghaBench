
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct xive_q {unsigned int msk; int * qpage; int esc_irq; int eoi_phys; scalar_t__ toggle; scalar_t__ idx; } ;
typedef int s64 ;
typedef int __be64 ;
typedef int __be32 ;


 int EINVAL ;
 int EIO ;
 int OPAL_BUSY ;
 int OPAL_BUSY_DELAY_MS ;
 int OPAL_XIVE_EQ_ALWAYS_NOTIFY ;
 int OPAL_XIVE_EQ_ENABLED ;
 int OPAL_XIVE_EQ_ESCALATE ;
 scalar_t__ WARN_ON (int) ;
 int __pa (int *) ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int msleep (int ) ;
 int opal_xive_get_queue_info (int ,int ,int *,int *,int *,int *,int *) ;
 int opal_xive_set_queue_info (int ,int ,int,int ,int) ;
 int pr_err (char*,int,int ) ;
 int wmb () ;

int xive_native_configure_queue(u32 vp_id, struct xive_q *q, u8 prio,
    __be32 *qpage, u32 order, bool can_escalate)
{
 s64 rc = 0;
 __be64 qeoi_page_be;
 __be32 esc_irq_be;
 u64 flags, qpage_phys;


 if (order) {
  if (WARN_ON(!qpage))
   return -EINVAL;
  qpage_phys = __pa(qpage);
 } else
  qpage_phys = 0;


 q->msk = order ? ((1u << (order - 2)) - 1) : 0;
 q->idx = 0;
 q->toggle = 0;

 rc = opal_xive_get_queue_info(vp_id, prio, ((void*)0), ((void*)0),
          &qeoi_page_be,
          &esc_irq_be,
          ((void*)0));
 if (rc) {
  pr_err("Error %lld getting queue info prio %d\n", rc, prio);
  rc = -EIO;
  goto fail;
 }
 q->eoi_phys = be64_to_cpu(qeoi_page_be);


 flags = OPAL_XIVE_EQ_ALWAYS_NOTIFY | OPAL_XIVE_EQ_ENABLED;


 if (can_escalate) {
  q->esc_irq = be32_to_cpu(esc_irq_be);
  flags |= OPAL_XIVE_EQ_ESCALATE;
 }


 for (;;) {
  rc = opal_xive_set_queue_info(vp_id, prio, qpage_phys, order, flags);
  if (rc != OPAL_BUSY)
   break;
  msleep(OPAL_BUSY_DELAY_MS);
 }
 if (rc) {
  pr_err("Error %lld setting queue for prio %d\n", rc, prio);
  rc = -EIO;
 } else {




  wmb();
  q->qpage = qpage;
 }
fail:
 return rc;
}
