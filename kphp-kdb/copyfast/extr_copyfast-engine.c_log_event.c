
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int update_pos; char* update_operations; long long* update_data; void** update_times; } ;
struct TYPE_6__ {TYPE_1__ structured; } ;
struct TYPE_5__ {int update_pos; char* update_operations; long long* update_data; void** update_times; } ;


 int LONG_STATS_UPDATE_BUFF_SIZE ;
 TYPE_3__* STATS ;
 int STATS_UPDATE_BUFF_SIZE ;
 TYPE_2__* UPDATE_STATS ;
 void* get_double_time_since_epoch () ;
 int log_verbosity ;

void log_event (int level, char op, long long data) {
  if (level > log_verbosity) {
    return;
  }
  int pos = STATS->structured.update_pos;
  STATS->structured.update_operations[pos] = op;
  STATS->structured.update_data[pos] = data;
  STATS->structured.update_times[pos] = get_double_time_since_epoch ();
  STATS->structured.update_pos++;
  if (STATS->structured.update_pos == STATS_UPDATE_BUFF_SIZE) {
    STATS->structured.update_pos = 0;
  }
  pos = UPDATE_STATS->update_pos;
  UPDATE_STATS->update_operations[pos] = op;
  UPDATE_STATS->update_data[pos] = data;
  UPDATE_STATS->update_times[pos] = get_double_time_since_epoch ();
  UPDATE_STATS->update_pos++;
  if (UPDATE_STATS->update_pos == LONG_STATS_UPDATE_BUFF_SIZE) {
    UPDATE_STATS->update_pos = 0;
  }
}
