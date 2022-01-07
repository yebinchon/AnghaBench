
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int outfile_ctx_t ;
struct TYPE_3__ {int * outfile_ctx; } ;
typedef TYPE_1__ hashcat_ctx_t ;


 int memset (int *,int ,int) ;

void outfile_destroy (hashcat_ctx_t *hashcat_ctx)
{
  outfile_ctx_t *outfile_ctx = hashcat_ctx->outfile_ctx;

  memset (outfile_ctx, 0, sizeof (outfile_ctx_t));
}
