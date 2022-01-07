
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pm_message_t ;


 int dpm_resume_early (int ) ;
 int dpm_resume_noirq (int ) ;

void dpm_resume_start(pm_message_t state)
{
 dpm_resume_noirq(state);
 dpm_resume_early(state);
}
