
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cpu_hw_events {unsigned long** amasks; unsigned long** avalues; int ** alternatives; } ;
struct TYPE_2__ {unsigned long add_fields; unsigned long test_adder; unsigned long group_constraint_mask; unsigned long group_constraint_val; int n_counter; int (* get_alternatives ) (int ,unsigned int,int *) ;scalar_t__ (* get_constraint ) (int ,unsigned long*,unsigned long*) ;int (* limited_pmc_event ) (int ) ;} ;


 int MAX_HWEVENTS ;
 unsigned int PPMU_LIMITED_PMC_REQD ;
 TYPE_1__* ppmu ;
 int stub1 (int ) ;
 int stub2 (int ,unsigned int,int *) ;
 scalar_t__ stub3 (int ,unsigned long*,unsigned long*) ;
 int stub4 (int ,unsigned int,int *) ;
 scalar_t__ stub5 (int ,unsigned long*,unsigned long*) ;

__attribute__((used)) static int power_check_constraints(struct cpu_hw_events *cpuhw,
       u64 event_id[], unsigned int cflags[],
       int n_ev)
{
 unsigned long mask, value, nv;
 unsigned long smasks[MAX_HWEVENTS], svalues[MAX_HWEVENTS];
 int n_alt[MAX_HWEVENTS], choice[MAX_HWEVENTS];
 int i, j;
 unsigned long addf = ppmu->add_fields;
 unsigned long tadd = ppmu->test_adder;
 unsigned long grp_mask = ppmu->group_constraint_mask;
 unsigned long grp_val = ppmu->group_constraint_val;

 if (n_ev > ppmu->n_counter)
  return -1;


 for (i = 0; i < n_ev; ++i) {
  if ((cflags[i] & PPMU_LIMITED_PMC_REQD)
      && !ppmu->limited_pmc_event(event_id[i])) {
   ppmu->get_alternatives(event_id[i], cflags[i],
            cpuhw->alternatives[i]);
   event_id[i] = cpuhw->alternatives[i][0];
  }
  if (ppmu->get_constraint(event_id[i], &cpuhw->amasks[i][0],
      &cpuhw->avalues[i][0]))
   return -1;
 }
 value = mask = 0;
 for (i = 0; i < n_ev; ++i) {
  nv = (value | cpuhw->avalues[i][0]) +
   (value & cpuhw->avalues[i][0] & addf);

  if (((((nv + tadd) ^ value) & mask) & (~grp_mask)) != 0)
   break;

  if (((((nv + tadd) ^ cpuhw->avalues[i][0]) & cpuhw->amasks[i][0])
   & (~grp_mask)) != 0)
   break;

  value = nv;
  mask |= cpuhw->amasks[i][0];
 }
 if (i == n_ev) {
  if ((value & mask & grp_mask) != (mask & grp_val))
   return -1;
  else
   return 0;
 }


 if (!ppmu->get_alternatives)
  return -1;
 for (i = 0; i < n_ev; ++i) {
  choice[i] = 0;
  n_alt[i] = ppmu->get_alternatives(event_id[i], cflags[i],
        cpuhw->alternatives[i]);
  for (j = 1; j < n_alt[i]; ++j)
   ppmu->get_constraint(cpuhw->alternatives[i][j],
          &cpuhw->amasks[i][j],
          &cpuhw->avalues[i][j]);
 }


 i = 0;
 j = -1;
 value = mask = nv = 0;
 while (i < n_ev) {
  if (j >= 0) {

   value = svalues[i];
   mask = smasks[i];
   j = choice[i];
  }




  while (++j < n_alt[i]) {
   nv = (value | cpuhw->avalues[i][j]) +
    (value & cpuhw->avalues[i][j] & addf);
   if ((((nv + tadd) ^ value) & mask) == 0 &&
       (((nv + tadd) ^ cpuhw->avalues[i][j])
        & cpuhw->amasks[i][j]) == 0)
    break;
  }
  if (j >= n_alt[i]) {





   if (--i < 0)
    return -1;
  } else {






   choice[i] = j;
   svalues[i] = value;
   smasks[i] = mask;
   value = nv;
   mask |= cpuhw->amasks[i][j];
   ++i;
   j = -1;
  }
 }


 for (i = 0; i < n_ev; ++i)
  event_id[i] = cpuhw->alternatives[i][choice[i]];
 return 0;
}
