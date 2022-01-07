
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int quiet; int keyspace; int stdout_flag; int show; int left; } ;
typedef TYPE_1__ user_options_t ;
typedef int time_t ;
typedef int stop_buf ;
typedef int start_buf ;
struct TYPE_6__ {TYPE_1__* user_options; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int ctime_r (int const*,char*) ;
 int event_log_info_nn (TYPE_2__*,char*,int ) ;
 int memset (char*,int ,int) ;

void goodbye_screen (hashcat_ctx_t *hashcat_ctx, const time_t proc_start, const time_t proc_stop)
{
  const user_options_t *user_options = hashcat_ctx->user_options;

  if (user_options->quiet == 1) return;
  if (user_options->keyspace == 1) return;
  if (user_options->stdout_flag == 1) return;
  if (user_options->show == 1) return;
  if (user_options->left == 1) return;

  char start_buf[32]; memset (start_buf, 0, sizeof (start_buf));
  char stop_buf[32]; memset (start_buf, 0, sizeof (stop_buf));

  event_log_info_nn (hashcat_ctx, "Started: %s", ctime_r (&proc_start, start_buf));
  event_log_info_nn (hashcat_ctx, "Stopped: %s", ctime_r (&proc_stop, stop_buf));
}
