
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; int* v; scalar_t__* s; scalar_t__ f; } ;


 int DL_LOG_SIZE ;
 int LOG_ID_MX ;
 int assert (int) ;
 TYPE_1__* dl_log ;
 int putc (scalar_t__,int ) ;
 int stderr ;

void dl_log_dump (int log_id, int verb) {
  assert (0 <= log_id && log_id < LOG_ID_MX);
  int i = (dl_log[log_id].f ? dl_log[log_id].i : 0);

  do {
    if (dl_log[log_id].s[i] && verb >= dl_log[log_id].v[i]) {
      putc (dl_log[log_id].s[i], stderr);
    }
    if (++i == DL_LOG_SIZE) {
      i = 0;
    }
  } while (dl_log[log_id].i != i);
}
