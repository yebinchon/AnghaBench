
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int outfile_autohex; int outfile_format; int outfile; } ;
typedef TYPE_2__ user_options_t ;
struct TYPE_6__ {int * pfp; } ;
struct TYPE_8__ {int outfile_autohex; int outfile_format; int filename; TYPE_1__ fp; } ;
typedef TYPE_3__ outfile_ctx_t ;
struct TYPE_9__ {TYPE_2__* user_options; TYPE_3__* outfile_ctx; } ;
typedef TYPE_4__ hashcat_ctx_t ;



int outfile_init (hashcat_ctx_t *hashcat_ctx)
{
  outfile_ctx_t *outfile_ctx = hashcat_ctx->outfile_ctx;
  user_options_t *user_options = hashcat_ctx->user_options;

  outfile_ctx->fp.pfp = ((void*)0);
  outfile_ctx->filename = user_options->outfile;
  outfile_ctx->outfile_format = user_options->outfile_format;
  outfile_ctx->outfile_autohex = user_options->outfile_autohex;

  return 0;
}
