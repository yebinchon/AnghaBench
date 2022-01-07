
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {int brain_client; } ;
typedef TYPE_1__ user_options_t ;
struct TYPE_24__ {TYPE_1__* user_options; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int WSACleanup () ;
 int backend_ctx_destroy (TYPE_2__*) ;
 int backend_ctx_devices_destroy (TYPE_2__*) ;
 int debugfile_destroy (TYPE_2__*) ;
 int dictstat_destroy (TYPE_2__*) ;
 int event_ctx_destroy (TYPE_2__*) ;
 int folder_config_destroy (TYPE_2__*) ;
 int hwmon_ctx_destroy (TYPE_2__*) ;
 int induct_ctx_destroy (TYPE_2__*) ;
 int logfile_destroy (TYPE_2__*) ;
 int loopback_destroy (TYPE_2__*) ;
 int outcheck_ctx_destroy (TYPE_2__*) ;
 int outfile_destroy (TYPE_2__*) ;
 int pidfile_ctx_destroy (TYPE_2__*) ;
 int potfile_destroy (TYPE_2__*) ;
 int restore_ctx_destroy (TYPE_2__*) ;
 int status_ctx_destroy (TYPE_2__*) ;
 int tuning_db_destroy (TYPE_2__*) ;
 int user_options_destroy (TYPE_2__*) ;
 int user_options_extra_destroy (TYPE_2__*) ;

int hashcat_session_destroy (hashcat_ctx_t *hashcat_ctx)
{
  debugfile_destroy (hashcat_ctx);
  dictstat_destroy (hashcat_ctx);
  folder_config_destroy (hashcat_ctx);
  hwmon_ctx_destroy (hashcat_ctx);
  induct_ctx_destroy (hashcat_ctx);
  logfile_destroy (hashcat_ctx);
  loopback_destroy (hashcat_ctx);
  backend_ctx_devices_destroy (hashcat_ctx);
  backend_ctx_destroy (hashcat_ctx);
  outcheck_ctx_destroy (hashcat_ctx);
  outfile_destroy (hashcat_ctx);
  pidfile_ctx_destroy (hashcat_ctx);
  potfile_destroy (hashcat_ctx);
  restore_ctx_destroy (hashcat_ctx);
  tuning_db_destroy (hashcat_ctx);
  user_options_destroy (hashcat_ctx);
  user_options_extra_destroy (hashcat_ctx);
  status_ctx_destroy (hashcat_ctx);
  event_ctx_destroy (hashcat_ctx);

  return 0;
}
