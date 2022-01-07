
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ const time_t ;
struct tm {int dummy; } ;
struct TYPE_4__ {scalar_t__ const runtime_start; } ;
typedef TYPE_1__ status_ctx_t ;
struct TYPE_5__ {TYPE_1__* status_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int HCBUFSIZ_TINY ;
 int format_timer_display (struct tm*,char*,int ) ;
 struct tm* gmtime_r (scalar_t__ const*,struct tm*) ;
 scalar_t__ hcmalloc (int ) ;
 int time (scalar_t__ const*) ;

char *status_get_time_started_relative (const hashcat_ctx_t *hashcat_ctx)
{
  const status_ctx_t *status_ctx = hashcat_ctx->status_ctx;

  time_t time_now;

  time (&time_now);

  const time_t time_start = status_ctx->runtime_start;

  time_t sec_run = time_now - time_start;

  struct tm *tmp;
  struct tm tm;

  tmp = gmtime_r (&sec_run, &tm);

  char *display_run = (char *) hcmalloc (HCBUFSIZ_TINY);

  format_timer_display (tmp, display_run, HCBUFSIZ_TINY);

  return display_run;
}
