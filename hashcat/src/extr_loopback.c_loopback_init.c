
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int benchmark; int example_hashes; int keyspace; int left; int backend_info; int show; int stdout_flag; int speed_only; int progress_only; int usage; int version; } ;
typedef TYPE_2__ user_options_t ;
struct TYPE_6__ {int * pfp; } ;
struct TYPE_8__ {int enabled; char* filename; TYPE_1__ fp; } ;
typedef TYPE_3__ loopback_ctx_t ;
struct TYPE_9__ {TYPE_2__* user_options; TYPE_3__* loopback_ctx; } ;
typedef TYPE_4__ hashcat_ctx_t ;


 int HCBUFSIZ_TINY ;
 scalar_t__ hcmalloc (int ) ;

int loopback_init (hashcat_ctx_t *hashcat_ctx)
{
  loopback_ctx_t *loopback_ctx = hashcat_ctx->loopback_ctx;
  user_options_t *user_options = hashcat_ctx->user_options;

  loopback_ctx->enabled = 0;

  if (user_options->benchmark == 1) return 0;
  if (user_options->example_hashes == 1) return 0;
  if (user_options->keyspace == 1) return 0;
  if (user_options->left == 1) return 0;
  if (user_options->backend_info == 1) return 0;
  if (user_options->show == 1) return 0;
  if (user_options->stdout_flag == 1) return 0;
  if (user_options->speed_only == 1) return 0;
  if (user_options->progress_only == 1) return 0;
  if (user_options->usage == 1) return 0;
  if (user_options->version == 1) return 0;

  loopback_ctx->enabled = 1;
  loopback_ctx->fp.pfp = ((void*)0);
  loopback_ctx->filename = (char *) hcmalloc (HCBUFSIZ_TINY);

  return 0;
}
