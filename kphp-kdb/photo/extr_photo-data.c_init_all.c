
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int user ;
typedef int kfs_file_handle_t ;
struct TYPE_7__ {int user_cnt; int total_photos; int log_pos1_crc32; int log_pos1; int log_timestamp; } ;
struct TYPE_6__ {struct TYPE_6__* prev_used; struct TYPE_6__* next_used; } ;


 TYPE_1__* LRU_head ;
 int assert (int) ;
 TYPE_1__* dl_malloc (int) ;
 int fprintf (int ,char*) ;
 int h_users ;
 TYPE_3__ header ;
 int index_users ;
 int init_types () ;
 int jump_log_crc32 ;
 int jump_log_pos ;
 int jump_log_ts ;
 int load_header (int ) ;
 int log_ts_exact_interval ;
 int map_int_int_init (int *) ;
 int set_intp_init (int *) ;
 int stderr ;
 int total_photos ;
 int try_init_local_uid () ;
 int user_cnt ;
 int user_init (TYPE_1__*) ;
 TYPE_1__* users ;
 int verbosity ;
 int volumes ;

int init_all (kfs_file_handle_t Index) {
  int i;

  if (verbosity > 1) {
    fprintf (stderr, "Init_all started\n");
  }

  log_ts_exact_interval = 1;

  map_int_int_init (&volumes);
  set_intp_init (&h_users);
  init_types();

  int f = load_header (Index);

  jump_log_ts = header.log_timestamp;
  jump_log_pos = header.log_pos1;
  jump_log_crc32 = header.log_pos1_crc32;

  user_cnt = index_users = header.user_cnt;
  total_photos = header.total_photos;

  if (user_cnt < 200000) {
    user_cnt = 200000;
  }

  assert (user_cnt >= 200000);
  user_cnt *= 1.1;



  while (user_cnt % 2 == 0 || user_cnt % 5 == 0) {
    user_cnt++;
  }

  users = dl_malloc (sizeof (user) * user_cnt);

  for (i = 0; i < user_cnt; i++) {
    user_init (&users[i]);
  }

  LRU_head = users;
  LRU_head->next_used = LRU_head->prev_used = LRU_head;

  if (f) {
    try_init_local_uid();
  }

  if (verbosity > 1) {
    fprintf (stderr, "Init_all finished\n");
  }

  return f;
}
