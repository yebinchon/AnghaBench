
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


 int PROMPT_ACTIVE ;
 int PROMPT_PAUSED ;
 scalar_t__ STATUS_PAUSED ;
 int fflush (int ) ;
 int fputc (char,int ) ;
 int stdout ;
 size_t strlen (int ) ;

void clear_prompt (hashcat_ctx_t *hashcat_ctx)
{
  const status_ctx_t *status_ctx = hashcat_ctx->status_ctx;

  size_t prompt_sz = 0;

  if (status_ctx->devices_status == STATUS_PAUSED)
  {
    prompt_sz = strlen (PROMPT_PAUSED);
  }
  else
  {
    prompt_sz = strlen (PROMPT_ACTIVE);
  }

  fputc ('\r', stdout);

  for (size_t i = 0; i < prompt_sz; i++)
  {
    fputc (' ', stdout);
  }

  fputc ('\r', stdout);

  fflush (stdout);
}
