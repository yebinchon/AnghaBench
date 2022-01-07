
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qrange {int dummy; } ;
struct qout64 {unsigned long qoutptr; int qoutlen; int segcnt; int segstart; TYPE_1__* range; int segend; int qname; int qopcode; } ;
struct qin64 {unsigned long qoutptr; int qoutlen; int segcnt; int segstart; TYPE_1__* range; int segend; int qname; int qopcode; } ;
struct dcss_segment {int vm_segtype; int start_addr; int segcnt; int range; int end; TYPE_1__* dcss_name; } ;
struct TYPE_2__ {int start; int end; } ;


 int DCSS_FINDSEGA ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 int SEG_TYPE_EN ;
 int SEG_TYPE_EW ;
 int SEG_TYPE_EWEN ;
 int dcss_diag (int *,struct qout64*,unsigned long*,unsigned long*) ;
 int dcss_diag_translate_rc (unsigned long) ;
 int kfree (struct qout64*) ;
 struct qout64* kmalloc (int,int) ;
 int memcpy (int ,TYPE_1__*,int) ;
 int pr_warn (char*,unsigned long) ;
 int segext_scode ;

__attribute__((used)) static int
query_segment_type (struct dcss_segment *seg)
{
 unsigned long dummy, vmrc;
 int diag_cc, rc, i;
 struct qout64 *qout;
 struct qin64 *qin;

 qin = kmalloc(sizeof(*qin), GFP_KERNEL | GFP_DMA);
 qout = kmalloc(sizeof(*qout), GFP_KERNEL | GFP_DMA);
 if ((qin == ((void*)0)) || (qout == ((void*)0))) {
  rc = -ENOMEM;
  goto out_free;
 }


 qin->qopcode = DCSS_FINDSEGA;
 qin->qoutptr = (unsigned long) qout;
 qin->qoutlen = sizeof(struct qout64);
 memcpy (qin->qname, seg->dcss_name, 8);

 diag_cc = dcss_diag(&segext_scode, qin, &dummy, &vmrc);

 if (diag_cc < 0) {
  rc = diag_cc;
  goto out_free;
 }
 if (diag_cc > 1) {
  pr_warn("Querying a DCSS type failed with rc=%ld\n", vmrc);
  rc = dcss_diag_translate_rc (vmrc);
  goto out_free;
 }

 if (qout->segcnt > 6) {
  rc = -EOPNOTSUPP;
  goto out_free;
 }

 if (qout->segcnt == 1) {
  seg->vm_segtype = qout->range[0].start & 0xff;
 } else {




  unsigned long start = qout->segstart >> PAGE_SHIFT;
  for (i=0; i<qout->segcnt; i++) {
   if (((qout->range[i].start & 0xff) != SEG_TYPE_EW) &&
       ((qout->range[i].start & 0xff) != SEG_TYPE_EN)) {
    rc = -EOPNOTSUPP;
    goto out_free;
   }
   if (start != qout->range[i].start >> PAGE_SHIFT) {
    rc = -EOPNOTSUPP;
    goto out_free;
   }
   start = (qout->range[i].end >> PAGE_SHIFT) + 1;
  }
  seg->vm_segtype = SEG_TYPE_EWEN;
 }


 seg->start_addr = qout->segstart;
 seg->end = qout->segend;

 memcpy (seg->range, qout->range, 6*sizeof(struct qrange));
 seg->segcnt = qout->segcnt;

 rc = 0;

 out_free:
 kfree(qin);
 kfree(qout);
 return rc;
}
