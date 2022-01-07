
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* I ;
 int adj_rec ;
 size_t ba_admin ;
 size_t ba_date ;
 size_t ba_enemy ;
 size_t ba_group_id ;
 int check_id (int) ;
 int fprintf (int ,char*,int) ;
 int last_date ;
 int log_11_set (int,int,int,int ) ;
 int log_timestamp (int) ;
 int stderr ;

void process_banlist_row (void) {
  int group_id = I[ba_group_id];
  int enemy = I[ba_enemy];
  int admin = I[ba_admin];
  int date = I[ba_date];
  if (enemy <= 0 || group_id <= 0) {

    return;
  }
  if (!check_id (group_id)) {
    return;
  }
  if (date != -1 && date < last_date - 10) {
    fprintf (stderr, "date goes back by %d seconds\n", last_date - date);
  } else if (date > last_date) {
    log_timestamp (date);
    last_date = date;
  }
  log_11_set (-group_id, enemy, admin, 0);
  adj_rec++;
}
