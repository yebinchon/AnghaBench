
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_photo_increm_data {int user_id; int data_id; int cnt; } ;


 int MAX_FIELDS ;
 int MY_LOG_EVENT_HANDLER (int ,int ) ;
 struct lev_photo_increm_data* alloc_log_event (int,int,int) ;
 int assert (int) ;
 int increm_data ;
 int mode ;

int do_increment_data (int uid, int did, int field_id, int cnt, int type) {
  assert (0 <= field_id && field_id < MAX_FIELDS);





  int size = sizeof (struct lev_photo_increm_data);
  struct lev_photo_increm_data *E =
    alloc_log_event (type + (mode << 16) + field_id, size, uid);

  E->user_id = uid;
  E->data_id = did;
  E->cnt = cnt;

  return MY_LOG_EVENT_HANDLER (increm_data, 0);
}
