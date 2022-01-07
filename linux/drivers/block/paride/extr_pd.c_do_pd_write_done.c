
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum action { ____Placeholder_action } action ;


 int Fail ;
 int Hold ;
 int Ok ;
 scalar_t__ PD_MAX_RETRIES ;
 int STAT_ERR ;
 int STAT_READY ;
 int Wait ;
 int do_pd_write_start ;
 int jiffies ;
 int pd_current ;
 int pd_ready () ;
 scalar_t__ pd_retries ;
 int pd_timeout ;
 int pd_wait_for (int ,int ,char*) ;
 int phase ;
 int time_after_eq (int ,int ) ;

__attribute__((used)) static enum action do_pd_write_done(void)
{
 if (!pd_ready() && !time_after_eq(jiffies, pd_timeout))
  return Hold;

 if (pd_wait_for(pd_current, STAT_READY, "do_pd_write_done") & STAT_ERR) {
  if (pd_retries < PD_MAX_RETRIES) {
   pd_retries++;
   phase = do_pd_write_start;
   return Wait;
  }
  return Fail;
 }
 return Ok;
}
