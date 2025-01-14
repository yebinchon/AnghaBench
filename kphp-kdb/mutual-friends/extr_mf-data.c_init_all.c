
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int user ;
struct TYPE_7__ {int user_cnt; int log_pos1_crc32; int log_pos1; int log_timestamp; } ;
struct TYPE_6__ {struct TYPE_6__* prev_used; struct TYPE_6__* next_used; } ;


 TYPE_1__* LRU_head ;
 int assert (int) ;
 TYPE_4__ header ;
 int index_users ;
 int jump_log_crc32 ;
 int jump_log_pos ;
 int jump_log_ts ;
 int load_header (char*) ;
 int log_ts_exact_interval ;
 int ltbl_init (int *) ;
 int ltbl_set_size (int *,int) ;
 TYPE_1__* qmalloc (int) ;
 int try_init_local_uid () ;
 int user_init (TYPE_1__*) ;
 int user_table ;
 TYPE_1__* users ;

void init_all (char *indexname) {
  int i;

  log_ts_exact_interval = 1;

  ltbl_init (&user_table);

  int f = load_header (indexname);

  jump_log_ts = header.log_timestamp;
  jump_log_pos = header.log_pos1;
  jump_log_crc32 = header.log_pos1_crc32;

  int user_cnt = index_users = header.user_cnt;

  if (user_cnt < 2400000) {
    user_cnt = 2400000;
  }

  assert (user_cnt >= 2400000);

  user_cnt *= 1.1;

  while (user_cnt % 2 == 0 || user_cnt % 5 == 0) {
    user_cnt++;
  }

  ltbl_set_size (&user_table, user_cnt);

  users = qmalloc (sizeof (user) * user_cnt);

  for (i = 0; i < user_cnt; i++) {
    user_init (&users[i]);
  }

  LRU_head = users;
  LRU_head->next_used = LRU_head->prev_used = LRU_head;

  if (f) {
    try_init_local_uid();
  }
}
