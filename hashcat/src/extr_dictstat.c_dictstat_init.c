
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int benchmark; int example_hashes; int keyspace; int left; int backend_info; int show; int usage; int version; scalar_t__ attack_mode; } ;
typedef TYPE_1__ user_options_t ;
struct TYPE_7__ {TYPE_1__* user_options; TYPE_3__* folder_config; TYPE_4__* dictstat_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;
struct TYPE_8__ {int profile_dir; } ;
typedef TYPE_3__ folder_config_t ;
typedef int dictstat_t ;
struct TYPE_9__ {int enabled; int filename; scalar_t__ cnt; int * base; } ;
typedef TYPE_4__ dictstat_ctx_t ;


 scalar_t__ ATTACK_MODE_BF ;
 int DICTSTAT_FILENAME ;
 int MAX_DICTSTAT ;
 int hc_asprintf (int *,char*,int ,int ) ;
 scalar_t__ hccalloc (int ,int) ;

int dictstat_init (hashcat_ctx_t *hashcat_ctx)
{
  dictstat_ctx_t *dictstat_ctx = hashcat_ctx->dictstat_ctx;
  folder_config_t *folder_config = hashcat_ctx->folder_config;
  user_options_t *user_options = hashcat_ctx->user_options;

  dictstat_ctx->enabled = 0;

  if (user_options->benchmark == 1) return 0;
  if (user_options->example_hashes == 1) return 0;
  if (user_options->keyspace == 1) return 0;
  if (user_options->left == 1) return 0;
  if (user_options->backend_info == 1) return 0;
  if (user_options->show == 1) return 0;
  if (user_options->usage == 1) return 0;
  if (user_options->version == 1) return 0;

  if (user_options->attack_mode == ATTACK_MODE_BF) return 0;

  dictstat_ctx->enabled = 1;
  dictstat_ctx->base = (dictstat_t *) hccalloc (MAX_DICTSTAT, sizeof (dictstat_t));
  dictstat_ctx->cnt = 0;

  hc_asprintf (&dictstat_ctx->filename, "%s/%s", folder_config->profile_dir, DICTSTAT_FILENAME);

  return 0;
}
