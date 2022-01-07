
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct rmid_read {int evtid; int val; scalar_t__ first; TYPE_1__* d; } ;
struct mbm_state {int prev_bw_msr; int prev_msr; int chunks; } ;
struct TYPE_2__ {struct mbm_state* mbm_local; struct mbm_state* mbm_total; } ;


 int EINVAL ;



 int RMID_VAL_ERROR ;
 int RMID_VAL_UNAVAIL ;
 int __rmid_read (size_t,int) ;
 int mbm_overflow_count (int,int) ;
 int memset (struct mbm_state*,int ,int) ;

__attribute__((used)) static int __mon_event_count(u32 rmid, struct rmid_read *rr)
{
 struct mbm_state *m;
 u64 chunks, tval;

 tval = __rmid_read(rmid, rr->evtid);
 if (tval & (RMID_VAL_ERROR | RMID_VAL_UNAVAIL)) {
  rr->val = tval;
  return -EINVAL;
 }
 switch (rr->evtid) {
 case 128:
  rr->val += tval;
  return 0;
 case 129:
  m = &rr->d->mbm_total[rmid];
  break;
 case 130:
  m = &rr->d->mbm_local[rmid];
  break;
 default:




  return -EINVAL;
 }

 if (rr->first) {
  memset(m, 0, sizeof(struct mbm_state));
  m->prev_bw_msr = m->prev_msr = tval;
  return 0;
 }

 chunks = mbm_overflow_count(m->prev_msr, tval);
 m->chunks += chunks;
 m->prev_msr = tval;

 rr->val += m->chunks;
 return 0;
}
