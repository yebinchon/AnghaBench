
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmid_read {int first; int evtid; struct rdt_domain* d; } ;
struct rdt_domain {int dummy; } ;


 int QOS_L3_MBM_LOCAL_EVENT_ID ;
 int QOS_L3_MBM_TOTAL_EVENT_ID ;
 int __mon_event_count (int,struct rmid_read*) ;
 int is_mba_sc (int *) ;
 scalar_t__ is_mbm_local_enabled () ;
 scalar_t__ is_mbm_total_enabled () ;
 int mbm_bw_count (int,struct rmid_read*) ;

__attribute__((used)) static void mbm_update(struct rdt_domain *d, int rmid)
{
 struct rmid_read rr;

 rr.first = 0;
 rr.d = d;





 if (is_mbm_total_enabled()) {
  rr.evtid = QOS_L3_MBM_TOTAL_EVENT_ID;
  __mon_event_count(rmid, &rr);
 }
 if (is_mbm_local_enabled()) {
  rr.evtid = QOS_L3_MBM_LOCAL_EVENT_ID;






  if (!is_mba_sc(((void*)0)))
   __mon_event_count(rmid, &rr);
  else
   mbm_bw_count(rmid, &rr);
 }
}
