
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct proc_user_info {scalar_t__ binlog_name_hash; long long updated_at; scalar_t__ binlog_pos; } ;
struct TYPE_3__ {scalar_t__ replica_name_hash; long long engine_time; int flags; scalar_t__ engine_log_pos; } ;


 int CData ;
 TYPE_1__* LR ;
 int LRF_CHANGED_TIME ;
 long long MIN_TIME_UPDATE_INTERVAL ;
 int * active_pids ;
 int active_pnum ;
 scalar_t__* binlog_hashes ;
 TYPE_1__** binlog_matches ;
 int fetch_process_data (struct proc_user_info*,int ) ;
 int local_rbs ;

void match_binlogs (void) {
  int i, j;
  if (!CData) {
    return;
  }
  for (i = 0; i < active_pnum; i++) {
    static struct proc_user_info PData;
    int res = fetch_process_data (&PData, active_pids[i]);
    if (res == 2) {
      if (binlog_hashes[i] != PData.binlog_name_hash) {
 binlog_hashes[i] = PData.binlog_name_hash;
 for (j = 0; j < local_rbs; j++) {
   if (LR[j].replica_name_hash == binlog_hashes[i]) {
     break;
   }
 }
 binlog_matches[i] = (j == local_rbs) ? 0 : &LR[j];
      }
      if (binlog_matches[i] && PData.binlog_pos) {
 long long engine_time = binlog_matches[i]->engine_time;
 if (
     engine_time > PData.updated_at || engine_time < PData.updated_at - MIN_TIME_UPDATE_INTERVAL) {
   binlog_matches[i]->engine_log_pos = PData.binlog_pos;
   binlog_matches[i]->engine_time = PData.updated_at;
   binlog_matches[i]->flags |= LRF_CHANGED_TIME;
 }
      }
    }
  }
}
