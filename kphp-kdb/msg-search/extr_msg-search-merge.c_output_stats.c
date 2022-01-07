
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_DATA ;
 int MAX_HASHES ;
 int MAX_METAINDEX_USERS ;
 int M_cnt ;
 int fprintf (int ,char*,int,...) ;
 scalar_t__* fsize ;
 scalar_t__ log_wpos ;
 int max_Dc ;
 int max_Dc_user ;
 int max_Qc ;
 int max_Qc_user ;
 int percent (int,int ) ;
 int purged_msgs_cnt ;
 int start_time ;
 int stderr ;
 int time (int ) ;
 int tot_Dc ;
 int tot_Qc ;
 int tot_binlog_messages ;
 int tot_dropped_pairs ;
 int tot_imported_pairs ;
 int users_added ;
 int users_dropped ;
 scalar_t__ wpos ;

void output_stats (void) {
  fprintf (stderr, "\nmessages purged from binlog: %d\n", purged_msgs_cnt);
  fprintf (stderr, "messages imported from binlog: %d\n", tot_binlog_messages);
  fprintf (stderr, "pairs imported from binlog: %lld\n", tot_imported_pairs);
  fprintf (stderr, "pairs dropped from old data: %lld\n", tot_dropped_pairs);
  fprintf (stderr, "total pairs output: %lld\n", tot_Dc);
  fprintf (stderr, "old users dropped: %d\n", users_dropped);
  fprintf (stderr, "new users added: %d\n", users_added);
  fprintf (stderr, "maximal pairs used: %d out of %ld (%d%%) for user %d\n", max_Dc, MAX_DATA, percent(max_Dc, MAX_DATA), max_Dc_user);
  fprintf (stderr, "total hashes output: %lld\n", tot_Qc);
  fprintf (stderr, "maximal hashes used: %d out of %ld (%d%%) for user %d\n", max_Qc, MAX_HASHES, percent(max_Qc, MAX_HASHES), max_Qc_user);
  fprintf (stderr, "output users: %d out of %ld (%d%%)\n", M_cnt, MAX_METAINDEX_USERS, percent(M_cnt, MAX_METAINDEX_USERS));
  fprintf (stderr, "binlog size: old %lld, new %lld\n", (long long) fsize[1], (long long) log_wpos);
  fprintf (stderr, "huge index size: old %lld, new %lld\n", (long long) fsize[0], (long long) wpos);
  fprintf (stderr, "used time: %ld seconds\n\n", time(0) - start_time);
}
