
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int keyspace; int benchmark; int example_hashes; int speed_only; int progress_only; int backend_info; scalar_t__ outfile_check_timer; int * outfile_check_dir; int session; } ;
typedef TYPE_1__ user_options_t ;
struct TYPE_9__ {int enabled; int * root_directory; } ;
typedef TYPE_2__ outcheck_ctx_t ;
struct TYPE_10__ {int outfile_check_disable; } ;
typedef TYPE_3__ hashconfig_t ;
struct TYPE_11__ {TYPE_1__* user_options; TYPE_2__* outcheck_ctx; TYPE_3__* hashconfig; TYPE_5__* folder_config; } ;
typedef TYPE_4__ hashcat_ctx_t ;
struct TYPE_12__ {int session_dir; } ;
typedef TYPE_5__ folder_config_t ;


 int OUTFILES_DIR ;
 int errno ;
 int event_log_error (TYPE_4__*,char*,int *,int ) ;
 int hc_asprintf (int **,char*,int ,int ,int ) ;
 int hc_mkdir (int *,int) ;
 int hc_path_exist (int *) ;
 int strerror (int ) ;

int outcheck_ctx_init (hashcat_ctx_t *hashcat_ctx)
{
  const folder_config_t *folder_config = hashcat_ctx->folder_config;
  const hashconfig_t *hashconfig = hashcat_ctx->hashconfig;
        outcheck_ctx_t *outcheck_ctx = hashcat_ctx->outcheck_ctx;
  const user_options_t *user_options = hashcat_ctx->user_options;

  outcheck_ctx->enabled = 0;

  if (user_options->keyspace == 1) return 0;
  if (user_options->benchmark == 1) return 0;
  if (user_options->example_hashes == 1) return 0;
  if (user_options->speed_only == 1) return 0;
  if (user_options->progress_only == 1) return 0;
  if (user_options->backend_info == 1) return 0;

  if (hashconfig->outfile_check_disable == 1) return 0;

  if (user_options->outfile_check_timer == 0) return 0;

  if (user_options->outfile_check_dir == ((void*)0))
  {
    hc_asprintf (&outcheck_ctx->root_directory, "%s/%s.%s", folder_config->session_dir, user_options->session, OUTFILES_DIR);
  }
  else
  {
    outcheck_ctx->root_directory = user_options->outfile_check_dir;
  }

  outcheck_ctx->enabled = 1;

  if (hc_path_exist (outcheck_ctx->root_directory) == 0)
  {
    if (hc_mkdir (outcheck_ctx->root_directory, 0700) == -1)
    {
      event_log_error (hashcat_ctx, "%s: %s", outcheck_ctx->root_directory, strerror (errno));

      return -1;
    }
  }

  return 0;
}
