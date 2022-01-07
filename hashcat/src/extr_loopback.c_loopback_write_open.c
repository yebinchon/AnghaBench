
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ time_t ;
struct TYPE_6__ {int enabled; int unused; int filename; int fp; } ;
typedef TYPE_1__ loopback_ctx_t ;
struct TYPE_7__ {int enabled; int root_directory; } ;
typedef TYPE_2__ induct_ctx_t ;
struct TYPE_8__ {TYPE_1__* loopback_ctx; TYPE_2__* induct_ctx; } ;
typedef TYPE_3__ hashcat_ctx_t ;


 int LOOPBACK_FILE ;
 int errno ;
 int event_log_error (TYPE_3__*,char*,int ,int ) ;
 int get_random_num (int ,int) ;
 int hc_asprintf (int *,char*,int ,int ,int,int const) ;
 int hc_fopen (int *,int ,char*) ;
 int strerror (int ) ;
 int time (scalar_t__*) ;

int loopback_write_open (hashcat_ctx_t *hashcat_ctx)
{
  induct_ctx_t *induct_ctx = hashcat_ctx->induct_ctx;
  loopback_ctx_t *loopback_ctx = hashcat_ctx->loopback_ctx;

  if (loopback_ctx->enabled == 0) return 0;

  if (induct_ctx->enabled == 0) return 0;

  time_t now;

  time (&now);

  const u32 random_num = get_random_num (0, 9999);

  hc_asprintf (&loopback_ctx->filename, "%s/%s.%d_%u", induct_ctx->root_directory, LOOPBACK_FILE, (int) now, random_num);

  if (hc_fopen (&loopback_ctx->fp, loopback_ctx->filename, "ab") == 0)
  {
    event_log_error (hashcat_ctx, "%s: %s", loopback_ctx->filename, strerror (errno));

    return -1;
  }

  loopback_ctx->unused = 1;

  return 0;
}
