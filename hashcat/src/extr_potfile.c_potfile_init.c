
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int benchmark; int example_hashes; int keyspace; int backend_info; int stdout_flag; int speed_only; int progress_only; int usage; int version; int potfile_disable; int * potfile_path; } ;
typedef TYPE_2__ user_options_t ;
typedef int u8 ;
struct TYPE_9__ {int * pfp; } ;
struct TYPE_11__ {int enabled; char* filename; int * tmp_buf; int * out_buf; TYPE_1__ fp; } ;
typedef TYPE_3__ potfile_ctx_t ;
struct TYPE_12__ {int potfile_disable; } ;
typedef TYPE_4__ hashconfig_t ;
struct TYPE_13__ {TYPE_2__* user_options; TYPE_3__* potfile_ctx; TYPE_4__* hashconfig; TYPE_6__* folder_config; } ;
typedef TYPE_5__ hashcat_ctx_t ;
struct TYPE_14__ {int profile_dir; } ;
typedef TYPE_6__ folder_config_t ;


 int HCBUFSIZ_LARGE ;
 int event_log_warning (TYPE_5__*,char*,...) ;
 int hc_asprintf (char**,char*,int ) ;
 int hc_path_exist (char*) ;
 int hcfree (char*) ;
 scalar_t__ hcmalloc (int ) ;
 char* hcstrdup (int *) ;

int potfile_init (hashcat_ctx_t *hashcat_ctx)
{
  const folder_config_t *folder_config = hashcat_ctx->folder_config;
  const hashconfig_t *hashconfig = hashcat_ctx->hashconfig;
        potfile_ctx_t *potfile_ctx = hashcat_ctx->potfile_ctx;
  const user_options_t *user_options = hashcat_ctx->user_options;

  potfile_ctx->enabled = 0;

  if (user_options->benchmark == 1) return 0;
  if (user_options->example_hashes == 1) return 0;
  if (user_options->keyspace == 1) return 0;
  if (user_options->backend_info == 1) return 0;
  if (user_options->stdout_flag == 1) return 0;
  if (user_options->speed_only == 1) return 0;
  if (user_options->progress_only == 1) return 0;
  if (user_options->usage == 1) return 0;
  if (user_options->version == 1) return 0;
  if (user_options->potfile_disable == 1) return 0;

  if (hashconfig->potfile_disable == 1) return 0;

  potfile_ctx->enabled = 1;

  if (user_options->potfile_path == ((void*)0))
  {
    potfile_ctx->fp.pfp = ((void*)0);

    hc_asprintf (&potfile_ctx->filename, "%s/hashcat.potfile", folder_config->profile_dir);
  }
  else
  {
    potfile_ctx->filename = hcstrdup (user_options->potfile_path);
    potfile_ctx->fp.pfp = ((void*)0);
  }



  u8 *out_buf = (u8 *) hcmalloc (HCBUFSIZ_LARGE);

  potfile_ctx->out_buf = out_buf;



  u8 *tmp_buf = (u8 *) hcmalloc (HCBUFSIZ_LARGE);

  potfile_ctx->tmp_buf = tmp_buf;



  if (user_options->potfile_path == ((void*)0))
  {
    char *potfile_old;

    hc_asprintf (&potfile_old, "%s/hashcat.pot", folder_config->profile_dir);

    if (hc_path_exist (potfile_old) == 1)
    {
      event_log_warning (hashcat_ctx, "Old potfile detected: %s", potfile_old);
      event_log_warning (hashcat_ctx, "New potfile is: %s ", potfile_ctx->filename);
      event_log_warning (hashcat_ctx, ((void*)0));
    }

    hcfree (potfile_old);
  }

  return 0;
}
