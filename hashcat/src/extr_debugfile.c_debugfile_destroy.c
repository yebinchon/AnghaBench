
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* debugfile_ctx; } ;
typedef TYPE_1__ hashcat_ctx_t ;
struct TYPE_6__ {int enabled; int fp; scalar_t__ filename; } ;
typedef TYPE_2__ debugfile_ctx_t ;


 int hc_fclose (int *) ;
 int memset (TYPE_2__*,int ,int) ;

void debugfile_destroy (hashcat_ctx_t *hashcat_ctx)
{
  debugfile_ctx_t *debugfile_ctx = hashcat_ctx->debugfile_ctx;

  if (debugfile_ctx->enabled == 0) return;

  if (debugfile_ctx->filename)
  {
    hc_fclose (&debugfile_ctx->fp);
  }

  memset (debugfile_ctx, 0, sizeof (debugfile_ctx_t));
}
