
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int enabled; int root_directory; } ;
typedef TYPE_1__ induct_ctx_t ;
struct TYPE_7__ {TYPE_1__* induct_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 scalar_t__ ENOENT ;
 scalar_t__ ENOTEMPTY ;
 scalar_t__ errno ;
 int event_log_error (TYPE_2__*,char*,int ,int ) ;
 int hcfree (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int rmdir (int ) ;
 int strerror (scalar_t__) ;

void induct_ctx_destroy (hashcat_ctx_t *hashcat_ctx)
{
  induct_ctx_t *induct_ctx = hashcat_ctx->induct_ctx;

  if (induct_ctx->enabled == 0) return;

  if (rmdir (induct_ctx->root_directory) == -1)
  {
    if (errno == ENOENT)
    {

    }
    else if (errno == ENOTEMPTY)
    {

    }
    else
    {
      event_log_error (hashcat_ctx, "%s: %s", induct_ctx->root_directory, strerror (errno));


    }
  }

  hcfree (induct_ctx->root_directory);

  memset (induct_ctx, 0, sizeof (induct_ctx_t));
}
