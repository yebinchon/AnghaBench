
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * words_progress_restored; int * words_progress_rejected; int * words_progress_done; } ;
typedef TYPE_1__ status_ctx_t ;
struct TYPE_5__ {TYPE_1__* status_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int hcfree (int *) ;

void status_progress_destroy (hashcat_ctx_t *hashcat_ctx)
{
  status_ctx_t *status_ctx = hashcat_ctx->status_ctx;

  hcfree (status_ctx->words_progress_done);
  hcfree (status_ctx->words_progress_rejected);
  hcfree (status_ctx->words_progress_restored);

  status_ctx->words_progress_done = ((void*)0);
  status_ctx->words_progress_rejected = ((void*)0);
  status_ctx->words_progress_restored = ((void*)0);
}
