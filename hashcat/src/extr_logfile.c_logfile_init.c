
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int logfile_disable; int session; } ;
typedef TYPE_1__ user_options_t ;
struct TYPE_7__ {char* subid; char* topid; int enabled; int logfile; } ;
typedef TYPE_2__ logfile_ctx_t ;
struct TYPE_8__ {TYPE_1__* user_options; TYPE_2__* logfile_ctx; TYPE_4__* folder_config; } ;
typedef TYPE_3__ hashcat_ctx_t ;
struct TYPE_9__ {int session_dir; } ;
typedef TYPE_4__ folder_config_t ;


 int HCBUFSIZ_TINY ;
 int hc_asprintf (int *,char*,int ,int ) ;
 scalar_t__ hcmalloc (int ) ;

int logfile_init (hashcat_ctx_t *hashcat_ctx)
{
  folder_config_t *folder_config = hashcat_ctx->folder_config;
  logfile_ctx_t *logfile_ctx = hashcat_ctx->logfile_ctx;
  user_options_t *user_options = hashcat_ctx->user_options;

  if (user_options->logfile_disable == 1) return 0;

  hc_asprintf (&logfile_ctx->logfile, "%s/%s.log", folder_config->session_dir, user_options->session);

  logfile_ctx->subid = (char *) hcmalloc (HCBUFSIZ_TINY);
  logfile_ctx->topid = (char *) hcmalloc (HCBUFSIZ_TINY);

  logfile_ctx->enabled = 1;

  return 0;
}
