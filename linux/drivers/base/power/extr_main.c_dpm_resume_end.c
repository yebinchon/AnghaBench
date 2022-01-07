
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pm_message_t ;


 int dpm_complete (int ) ;
 int dpm_resume (int ) ;

void dpm_resume_end(pm_message_t state)
{
 dpm_resume(state);
 dpm_complete(state);
}
