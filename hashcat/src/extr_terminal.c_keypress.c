
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int quiet; } ;
typedef TYPE_1__ user_options_t ;
struct TYPE_14__ {scalar_t__ devices_status; int shutdown_outer; int checkpoint_shutdown; int mux_display; } ;
typedef TYPE_2__ status_ctx_t ;
struct TYPE_15__ {TYPE_1__* user_options; TYPE_2__* status_ctx; } ;
typedef TYPE_3__ hashcat_ctx_t ;


 int ResumeThreads (TYPE_3__*) ;
 scalar_t__ STATUS_INIT ;
 scalar_t__ STATUS_PAUSED ;
 int SuspendThreads (TYPE_3__*) ;
 int bypass (TYPE_3__*) ;
 int event_log_info (TYPE_3__*,char*) ;
 int hc_thread_mutex_lock (int ) ;
 int hc_thread_mutex_unlock (int ) ;
 int myquit (TYPE_3__*) ;
 int send_prompt (TYPE_3__*) ;
 int status_display (TYPE_3__*) ;
 int stop_at_checkpoint (TYPE_3__*) ;
 int tty_break () ;
 int tty_fix () ;
 int tty_getchar () ;
 int usleep (int) ;

__attribute__((used)) static void keypress (hashcat_ctx_t *hashcat_ctx)
{
  status_ctx_t *status_ctx = hashcat_ctx->status_ctx;
  user_options_t *user_options = hashcat_ctx->user_options;


  while (status_ctx->devices_status == STATUS_INIT) usleep (100000);

  const bool quiet = user_options->quiet;

  tty_break ();

  while (status_ctx->shutdown_outer == 0)
  {
    int ch = tty_getchar ();

    if (ch == -1) break;

    if (ch == 0) continue;






    hc_thread_mutex_lock (status_ctx->mux_display);

    event_log_info (hashcat_ctx, ((void*)0));

    switch (ch)
    {
      case 's':
      case '\r':
      case '\n':

        event_log_info (hashcat_ctx, ((void*)0));

        status_display (hashcat_ctx);

        event_log_info (hashcat_ctx, ((void*)0));

        if (quiet == 0) send_prompt (hashcat_ctx);

        break;

      case 'b':

        event_log_info (hashcat_ctx, ((void*)0));

        bypass (hashcat_ctx);

        event_log_info (hashcat_ctx, "Next dictionary / mask in queue selected. Bypassing current one.");

        event_log_info (hashcat_ctx, ((void*)0));

        if (quiet == 0) send_prompt (hashcat_ctx);

        break;

      case 'p':

        if (status_ctx->devices_status != STATUS_PAUSED)
        {
          event_log_info (hashcat_ctx, ((void*)0));

          SuspendThreads (hashcat_ctx);

          if (status_ctx->devices_status == STATUS_PAUSED)
          {
            event_log_info (hashcat_ctx, "Paused");
          }

          event_log_info (hashcat_ctx, ((void*)0));
        }

        if (quiet == 0) send_prompt (hashcat_ctx);

        break;

      case 'r':

        if (status_ctx->devices_status == STATUS_PAUSED)
        {
          event_log_info (hashcat_ctx, ((void*)0));

          ResumeThreads (hashcat_ctx);

          if (status_ctx->devices_status != STATUS_PAUSED)
          {
            event_log_info (hashcat_ctx, "Resumed");
          }

          event_log_info (hashcat_ctx, ((void*)0));
        }

        if (quiet == 0) send_prompt (hashcat_ctx);

        break;

      case 'c':

        event_log_info (hashcat_ctx, ((void*)0));

        stop_at_checkpoint (hashcat_ctx);

        if (status_ctx->checkpoint_shutdown == 1)
        {
          event_log_info (hashcat_ctx, "Checkpoint enabled. Will quit at next restore-point update.");
        }
        else
        {
          event_log_info (hashcat_ctx, "Checkpoint disabled. Restore-point updates will no longer be monitored.");
        }

        event_log_info (hashcat_ctx, ((void*)0));

        if (quiet == 0) send_prompt (hashcat_ctx);

        break;

      case 'q':

        event_log_info (hashcat_ctx, ((void*)0));

        myquit (hashcat_ctx);

        break;

      default:

        if (quiet == 0) send_prompt (hashcat_ctx);

        break;
    }






    hc_thread_mutex_unlock (status_ctx->mux_display);
  }

  tty_fix ();
}
