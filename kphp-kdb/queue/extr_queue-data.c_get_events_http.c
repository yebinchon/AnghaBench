
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* q; TYPE_2__* st; int subscribed; scalar_t__ ts; scalar_t__ prev_ts; int timeout; } ;
typedef TYPE_1__ qkey ;
struct TYPE_7__ {scalar_t__ data_len; int* data; int created; struct TYPE_7__* next; } ;
typedef TYPE_2__ event ;
struct TYPE_8__ {int name; int extra; } ;


 int CLOCK_MONOTONIC ;
 scalar_t__ Q_WATCHCAT ;
 scalar_t__ __may_wait ;
 int assert (int) ;
 int buff_overflow_cnt ;
 int cnt_delay ;
 int critical (char*,int ) ;
 int debug (char*,...) ;
 scalar_t__ debug_buff ;
 int debug_error ;
 scalar_t__ ds ;
 int events_sent ;
 scalar_t__ get_qtype (int ) ;
 double get_utime (int ) ;
 int get_watchcat_id (int ) ;
 int * http_failed ;
 double max (int ,int ) ;
 double max_delay ;
 int qkey_fix_timeout (TYPE_1__*) ;
 int queue_fix (TYPE_3__*) ;
 int quick_fix ;
 double sum_delay ;
 int update_watchcat (int ,int ,int ) ;
 scalar_t__ write_str (scalar_t__,int*,scalar_t__) ;

char *get_events_http (qkey *k) {
  if (!quick_fix) {
    ds = debug_buff;
  }

  qkey_fix_timeout (k);

  if (get_qtype (k->q->name) == Q_WATCHCAT) {
    update_watchcat (get_watchcat_id (k->q->name), k->timeout, k->q->extra);
  }

  k->ts = k->prev_ts + 1;
  debug ("{\"ts\":\"%d\"", k->ts);

  int f = 0;
  debug (",\"events\":[");

  event *e = k->st;

  double cur_time = get_utime (CLOCK_MONOTONIC);
  while (e->next != ((void*)0)) {
    e = e->next;

    if (f) {
      debug (",");
    } else {
      __may_wait = 0;
      f = 1;
    }

    if (ds + e->data_len > debug_buff + (1 << 23)) {
      critical ("Queue %s overflow\n", k->q->name);
      debug_error = 1;
      break;
    }
    assert (ds + e->data_len < debug_buff + (1 << 24));
    assert (e->data_len > 0);
    if (e->data[0] == 2) {
      debug ("%s", e->data + 1);
    } else {
      debug ("\"");
      ds += write_str (ds, e->data, e->data_len - 1);
      debug ("\"");
    }

    double cur_delay = cur_time - max (e->created, k->subscribed);
    sum_delay += cur_delay;
    cnt_delay++;
    events_sent++;

    if (cur_delay > max_delay) {
      max_delay = cur_delay;

    }
  }
  k->st = e;

  debug ("]}");

  if (debug_error) {
    http_failed[3]++;
    buff_overflow_cnt++;
    debug_error = 0;
    ds = debug_buff;
    debug ("{\"failed\":3}");
  }

  queue_fix (k->q);

  return debug_buff;
}
