
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int channel_subsystem_reinit () ;
 int lgr_info_log () ;
 int zpci_rescan () ;

void s390_early_resume(void)
{
 lgr_info_log();
 channel_subsystem_reinit();
 zpci_rescan();
}
