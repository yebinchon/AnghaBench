
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_get_int (char*,int*) ;

long get_files_ref_lock_timeout_ms(void)
{
 static int configured = 0;


 static int timeout_ms = 100;

 if (!configured) {
  git_config_get_int("core.filesreflocktimeout", &timeout_ms);
  configured = 1;
 }

 return timeout_ms;
}
