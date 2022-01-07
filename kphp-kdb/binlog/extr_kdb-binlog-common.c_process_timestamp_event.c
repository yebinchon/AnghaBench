
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {scalar_t__ a; } ;


 int fprintf (int ,char*,scalar_t__,scalar_t__,...) ;
 int log_cur_pos () ;
 int log_cutoff_pos ;
 scalar_t__ log_first_ts ;
 scalar_t__ log_last_ts ;
 scalar_t__ log_read_until ;
 int log_scan_mode ;
 scalar_t__ log_set_now ;
 scalar_t__ log_time_cutoff ;
 scalar_t__ now ;
 int stderr ;
 scalar_t__ verbosity ;

__attribute__((used)) static void process_timestamp_event (struct lev_generic *E) {
  if (!log_first_ts) {
    log_first_ts = E->a;
  }
  if (log_read_until > E->a) {
    fprintf (stderr, "time goes back from %d to %d in log file\n", log_read_until, E->a);
  }
  log_last_ts = log_read_until = E->a;
  if (log_set_now) {
    now = log_read_until;
  }
  if (E->a >= log_time_cutoff && !log_scan_mode) {
    log_cutoff_pos = log_cur_pos ();
    log_scan_mode = 1;
    if (verbosity) {
      fprintf (stderr, "reached timestamp %d above cutoff %d at binlog position %lld, entering scan mode 1\n",
        E->a, log_time_cutoff, log_cutoff_pos);
    }
  }
}
