
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


struct TYPE_27__ {int brain_client; int rp_gen_seed; int rp_gen_seed_chgd; } ;
typedef TYPE_1__ user_options_t ;
struct TYPE_28__ {int folder_config; TYPE_1__* user_options; } ;
typedef TYPE_2__ hashcat_ctx_t ;
typedef int WSADATA ;
typedef int WORD ;


 int MAKEWORD (int,int) ;
 scalar_t__ NO_ERROR ;
 scalar_t__ WSAStartup (int ,int *) ;
 int backend_ctx_devices_init (TYPE_2__*,int const) ;
 int backend_ctx_init (TYPE_2__*) ;
 int debugfile_init (TYPE_2__*) ;
 int dictstat_init (TYPE_2__*) ;
 int errno ;
 int event_ctx_init (TYPE_2__*) ;
 int folder_config_init (TYPE_2__*,char const*,char const*) ;
 int fprintf (int ,char*,char*) ;
 int hwmon_ctx_init (TYPE_2__*) ;
 int induct_ctx_init (TYPE_2__*) ;
 int logfile_init (TYPE_2__*) ;
 int loopback_init (TYPE_2__*) ;
 int outcheck_ctx_init (TYPE_2__*) ;
 int outfile_init (TYPE_2__*) ;
 int pidfile_ctx_init (TYPE_2__*) ;
 int potfile_init (TYPE_2__*) ;
 int restore_ctx_init (TYPE_2__*,int,char**) ;
 int set_cpu_affinity (TYPE_2__*) ;
 int setup_environment_variables (int ) ;
 int setup_seeding (int ,int ) ;
 int setup_umask () ;
 int status_ctx_init (TYPE_2__*) ;
 int stderr ;
 char* strerror (int ) ;
 int tuning_db_init (TYPE_2__*) ;
 int user_options_check_files (TYPE_2__*) ;
 int user_options_extra_init (TYPE_2__*) ;
 int user_options_postprocess (TYPE_2__*) ;
 int user_options_preprocess (TYPE_2__*) ;
 int user_options_session_auto (TYPE_2__*) ;

int hashcat_session_init (hashcat_ctx_t *hashcat_ctx, const char *install_folder, const char *shared_folder, int argc, char **argv, const int comptime)
{
  user_options_t *user_options = hashcat_ctx->user_options;





  user_options_session_auto (hashcat_ctx);





  if (event_ctx_init (hashcat_ctx) == -1) return -1;





  if (status_ctx_init (hashcat_ctx) == -1) return -1;





  if (folder_config_init (hashcat_ctx, install_folder, shared_folder) == -1) return -1;





  if (pidfile_ctx_init (hashcat_ctx) == -1) return -1;





  if (restore_ctx_init (hashcat_ctx, argc, argv) == -1) return -1;





  user_options_preprocess (hashcat_ctx);

  user_options_extra_init (hashcat_ctx);

  user_options_postprocess (hashcat_ctx);
  if (logfile_init (hashcat_ctx) == -1) return -1;





  if (set_cpu_affinity (hashcat_ctx) == -1) return -1;





  setup_seeding (user_options->rp_gen_seed_chgd, user_options->rp_gen_seed);





  setup_environment_variables (hashcat_ctx->folder_config);

  setup_umask ();





  if (tuning_db_init (hashcat_ctx) == -1) return -1;





  if (induct_ctx_init (hashcat_ctx) == -1) return -1;





  if (outcheck_ctx_init (hashcat_ctx) == -1) return -1;





  if (outfile_init (hashcat_ctx) == -1) return -1;







  if (potfile_init (hashcat_ctx) == -1) return -1;





  if (dictstat_init (hashcat_ctx) == -1) return -1;





  if (loopback_init (hashcat_ctx) == -1) return -1;





  if (debugfile_init (hashcat_ctx) == -1) return -1;





  if (user_options_check_files (hashcat_ctx) == -1) return -1;





  if (backend_ctx_init (hashcat_ctx) == -1) return -1;





  if (backend_ctx_devices_init (hashcat_ctx, comptime) == -1) return -1;





  if (hwmon_ctx_init (hashcat_ctx) == -1) return -1;



  return 0;
}
