
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rand_data {scalar_t__ prev_time; int member_0; } ;
typedef scalar_t__ __u64 ;


 int CLEARCACHE ;
 int JENT_ECOARSETIME ;
 int JENT_ENOMONOTONIC ;
 int JENT_ENOTIME ;
 int JENT_ESTUCK ;
 int JENT_EVARVAR ;
 int TESTLOOPCOUNT ;
 int jent_get_nstime (scalar_t__*) ;
 int jent_lfsr_time (struct rand_data*,scalar_t__,int ) ;
 int jent_stuck (struct rand_data*,scalar_t__) ;

int jent_entropy_init(void)
{
 int i;
 __u64 delta_sum = 0;
 __u64 old_delta = 0;
 int time_backwards = 0;
 int count_mod = 0;
 int count_stuck = 0;
 struct rand_data ec = { 0 };
 for (i = 0; (300 + 100) > i; i++) {
  __u64 time = 0;
  __u64 time2 = 0;
  __u64 delta = 0;
  unsigned int lowdelta = 0;
  int stuck;


  jent_get_nstime(&time);
  ec.prev_time = time;
  jent_lfsr_time(&ec, time, 0);
  jent_get_nstime(&time2);


  if (!time || !time2)
   return JENT_ENOTIME;
  delta = time2 - time;





  if (!delta)
   return JENT_ECOARSETIME;

  stuck = jent_stuck(&ec, delta);
  if (100 > i)
   continue;

  if (stuck)
   count_stuck++;


  if (!(time2 > time))
   time_backwards++;


  lowdelta = time2 - time;
  if (!(lowdelta % 100))
   count_mod++;







  if (delta > old_delta)
   delta_sum += (delta - old_delta);
  else
   delta_sum += (old_delta - delta);
  old_delta = delta;
 }
 if (3 < time_backwards)
  return JENT_ENOMONOTONIC;






 if ((delta_sum) <= 1)
  return JENT_EVARVAR;






 if ((300/10 * 9) < count_mod)
  return JENT_ECOARSETIME;





 if ((300/10 * 9) < count_stuck)
  return JENT_ESTUCK;

 return 0;
}
