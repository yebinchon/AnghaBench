
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int user ;
typedef int rating ;
typedef int kfs_file_handle_t ;
struct TYPE_8__ {int user_cnt; TYPE_1__* user_index; int log_pos1_crc32; int log_pos1; int log_timestamp; int created_at; } ;
struct TYPE_7__ {struct TYPE_7__* prev_used; struct TYPE_7__* next_used; int flags; } ;
struct TYPE_6__ {int flags; } ;


 int GET_USER_INFO (int ) ;
 int GET_USER_RATING_STATE (int ) ;
 TYPE_2__* LRU_head ;
 int MAX_CNT ;
 int MAX_K ;
 int MAX_RATING_NUM ;
 int MAX_USR_SIZE ;
 int SET_USER_INFO (int ,int ) ;
 int SET_USER_RATING_STATE (int ,int ) ;
 int assert (int) ;
 void* buff ;
 void* buffer ;
 int chg_list_init (int *,int *) ;
 void* d ;
 void* dl_malloc (int) ;
 int dl_malloc0 (int) ;
 void** dp ;
 int estimate_users ;
 int exc ;
 int fprintf (int ,char*,long) ;
 int global_changes_en ;
 int global_changes_st ;
 void* h_buff ;
 TYPE_4__ header ;
 void* heap ;
 void* i_buff ;
 scalar_t__ index_mode ;
 int index_users ;
 void* intersect_buff ;
 int jump_log_crc32 ;
 int jump_log_pos ;
 int jump_log_ts ;
 int load_header (int ) ;
 int log_ts_exact_interval ;
 int ltbl_init (int *) ;
 int ltbl_set_size (int *,int) ;
 void* new_h ;
 void* new_obj ;
 void* object_buf ;
 void* object_indexes ;
 void* object_ratings ;
 void* object_ratings_to_sort ;
 void* objects_to_sort ;
 void* objects_typeids_to_sort ;
 int ratingT ;
 int stderr ;
 int try_init_local_user_id () ;
 void* type_ids ;
 int user_init (TYPE_2__*) ;
 int user_table ;
 TYPE_2__* users ;
 int verbosity ;
 void* weight ;
 scalar_t__ write_only ;

int init_all (kfs_file_handle_t Index) {
  int i;

  if (verbosity > 3) {
    fprintf (stderr, "sizeof (user) = %ld\n", (long)sizeof (user));
  }

  log_ts_exact_interval = 1;

  buff = dl_malloc ((MAX_CNT + 1) * sizeof (int));

  if (index_mode) {
    if (200ll * MAX_CNT < 2000000000ll) {
      MAX_USR_SIZE = 200 * MAX_CNT;
    } else {
      MAX_USR_SIZE = 2000000000;
    }

    buffer = dl_malloc (MAX_USR_SIZE);
    new_obj = dl_malloc (MAX_USR_SIZE);
    type_ids = dl_malloc ((MAX_CNT + 1) * sizeof (long long));
    object_ratings = dl_malloc ((MAX_CNT + 1) * sizeof (rating) * MAX_RATING_NUM);
    object_ratings_to_sort = dl_malloc ((MAX_CNT + 1) * sizeof (rating));
    h_buff = dl_malloc (MAX_USR_SIZE);







  } else {
    int i;
    for (i = 0; i <= MAX_K; i++) {
      dp[i] = dl_malloc ((MAX_CNT + 1) * sizeof (rating));
    }
    d = dl_malloc ((MAX_CNT + 1) * sizeof (rating));
    weight = dl_malloc (MAX_CNT * sizeof (rating));

    heap = dl_malloc ((MAX_CNT + 1) * sizeof (int));
    objects_typeids_to_sort = dl_malloc (MAX_CNT * sizeof (long long));
    objects_to_sort = dl_malloc (MAX_CNT * sizeof (int));




    exc = dl_malloc0 ((MAX_CNT + 1) * sizeof (int));

  }

  chg_list_init (&global_changes_st, &global_changes_en);
  ltbl_init (&user_table);

  int f = load_header (Index);

  ratingT = header.created_at;

  jump_log_ts = header.log_timestamp;
  jump_log_pos = header.log_pos1;
  jump_log_crc32 = header.log_pos1_crc32;

  int user_cnt = index_users = header.user_cnt;

  if (user_cnt < estimate_users) {
    user_cnt = estimate_users;
  }

  assert (user_cnt >= estimate_users);

  user_cnt *= 1.1;
  while (user_cnt % 2 == 0 || user_cnt % 5 == 0) {
    user_cnt++;
  }

  if (write_only) {
    user_cnt = 3;
  }

  ltbl_set_size (&user_table, user_cnt);

  users = dl_malloc (sizeof (user) * user_cnt);
  for (i = 0; i < user_cnt; i++) {
    user_init (&users[i]);
  }

  for (i = 1; i <= header.user_cnt; i++) {
    users[i].flags = SET_USER_INFO (users[i].flags, GET_USER_INFO (header.user_index[i].flags));
    users[i].flags = SET_USER_RATING_STATE (users[i].flags, GET_USER_RATING_STATE (header.user_index[i].flags));
  }

  LRU_head = users;
  LRU_head->next_used = LRU_head->prev_used = LRU_head;

  if (f) {
    try_init_local_user_id();
  }

  return f;
}
