
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int session; } ;
typedef TYPE_1__ user_options_t ;
struct TYPE_9__ {int pidfile_written; int filename; } ;
typedef TYPE_2__ pidfile_ctx_t ;
struct TYPE_10__ {TYPE_1__* user_options; TYPE_2__* pidfile_ctx; TYPE_4__* folder_config; } ;
typedef TYPE_3__ hashcat_ctx_t ;
struct TYPE_11__ {int session_dir; } ;
typedef TYPE_4__ folder_config_t ;


 int hc_asprintf (int *,char*,int ,int ) ;
 int init_pidfile (TYPE_3__*) ;
 int write_pidfile (TYPE_3__*) ;

int pidfile_ctx_init (hashcat_ctx_t *hashcat_ctx)
{
  folder_config_t *folder_config = hashcat_ctx->folder_config;
  pidfile_ctx_t *pidfile_ctx = hashcat_ctx->pidfile_ctx;
  user_options_t *user_options = hashcat_ctx->user_options;

  hc_asprintf (&pidfile_ctx->filename, "%s/%s.pid", folder_config->session_dir, user_options->session);

  pidfile_ctx->pidfile_written = 0;

  const int rc_init_pidfile = init_pidfile (hashcat_ctx);

  if (rc_init_pidfile == -1) return -1;

  const int rc = write_pidfile (hashcat_ctx);

  if (rc == 0) pidfile_ctx->pidfile_written = 1;

  return 0;
}
