
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ devices_status; } ;
typedef TYPE_1__ status_ctx_t ;
struct TYPE_5__ {TYPE_1__* status_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 char* PROMPT_ACTIVE ;
 char* PROMPT_PAUSED ;
 scalar_t__ STATUS_PAUSED ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int stdout ;

void send_prompt (hashcat_ctx_t *hashcat_ctx)
{
  const status_ctx_t *status_ctx = hashcat_ctx->status_ctx;

  if (status_ctx->devices_status == STATUS_PAUSED)
  {
    fprintf (stdout, "%s", PROMPT_PAUSED);
  }
  else
  {
    fprintf (stdout, "%s", PROMPT_ACTIVE);
  }

  fflush (stdout);
}
