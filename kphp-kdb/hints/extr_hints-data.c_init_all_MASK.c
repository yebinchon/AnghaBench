#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user ;
typedef  int /*<<< orphan*/  rating ;
typedef  int /*<<< orphan*/  kfs_file_handle_t ;
struct TYPE_8__ {int user_cnt; TYPE_1__* user_index; int /*<<< orphan*/  log_pos1_crc32; int /*<<< orphan*/  log_pos1; int /*<<< orphan*/  log_timestamp; int /*<<< orphan*/  created_at; } ;
struct TYPE_7__ {struct TYPE_7__* prev_used; struct TYPE_7__* next_used; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* LRU_head ; 
 int MAX_CNT ; 
 int MAX_K ; 
 int MAX_RATING_NUM ; 
 int MAX_USR_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* buff ; 
 void* buffer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* d ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 void** dp ; 
 int estimate_users ; 
 int /*<<< orphan*/  exc ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  global_changes_en ; 
 int /*<<< orphan*/  global_changes_st ; 
 void* h_buff ; 
 TYPE_4__ header ; 
 void* heap ; 
 void* i_buff ; 
 scalar_t__ index_mode ; 
 int index_users ; 
 void* intersect_buff ; 
 int /*<<< orphan*/  jump_log_crc32 ; 
 int /*<<< orphan*/  jump_log_pos ; 
 int /*<<< orphan*/  jump_log_ts ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int log_ts_exact_interval ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 void* new_h ; 
 void* new_obj ; 
 void* object_buf ; 
 void* object_indexes ; 
 void* object_ratings ; 
 void* object_ratings_to_sort ; 
 void* objects_to_sort ; 
 void* objects_typeids_to_sort ; 
 int /*<<< orphan*/  ratingT ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 () ; 
 void* type_ids ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  user_table ; 
 TYPE_2__* users ; 
 int verbosity ; 
 void* weight ; 
 scalar_t__ write_only ; 

int FUNC14 (kfs_file_handle_t Index) {
  int i;

  if (verbosity > 3) {
    FUNC8 (stderr, "sizeof (user) = %ld\n", (long)sizeof (user));
  }

  log_ts_exact_interval = 1;

  buff = FUNC6 ((MAX_CNT + 1) * sizeof (int));

  if (index_mode) {
    if (200ll * MAX_CNT < 2000000000ll) {
      MAX_USR_SIZE = 200 * MAX_CNT;
    } else {
      MAX_USR_SIZE = 2000000000;
    }

    buffer = FUNC6 (MAX_USR_SIZE);
    new_obj = FUNC6 (MAX_USR_SIZE);
    type_ids = FUNC6 ((MAX_CNT + 1) * sizeof (long long));
    object_ratings = FUNC6 ((MAX_CNT + 1) * sizeof (rating) * MAX_RATING_NUM);
    object_ratings_to_sort = FUNC6 ((MAX_CNT + 1) * sizeof (rating));
    h_buff = FUNC6 (MAX_USR_SIZE);

#ifdef HINTS
    i_buff = dl_malloc (MAX_USR_SIZE);
    new_h = dl_malloc (MAX_USR_SIZE);
    object_indexes = dl_malloc ((MAX_CNT + 1) * sizeof (int));
    object_buf = dl_malloc (MAX_USR_SIZE);
#endif
  } else {
    int i;
    for (i = 0; i <= MAX_K; i++) {
      dp[i] = FUNC6 ((MAX_CNT + 1) * sizeof (rating));
    }
    d = FUNC6 ((MAX_CNT + 1) * sizeof (rating));
    weight = FUNC6 (MAX_CNT * sizeof (rating));

    heap = FUNC6 ((MAX_CNT + 1) * sizeof (int));
    objects_typeids_to_sort = FUNC6 (MAX_CNT * sizeof (long long));
    objects_to_sort = FUNC6 (MAX_CNT * sizeof (int));

#ifdef HINTS
    intersect_buff = dl_malloc ((MAX_CNT + 1) * sizeof (int));
#else
    exc = FUNC7 ((MAX_CNT + 1) * sizeof (int));
#endif
  }

  FUNC5 (&global_changes_st, &global_changes_en);
  FUNC10 (&user_table);

  int f = FUNC9 (Index);

  ratingT = header.created_at;

  jump_log_ts = header.log_timestamp;
  jump_log_pos = header.log_pos1;
  jump_log_crc32 = header.log_pos1_crc32;

  int user_cnt = index_users = header.user_cnt;

  if (user_cnt < estimate_users) {
    user_cnt = estimate_users;
  }

  FUNC4 (user_cnt >= estimate_users);

  user_cnt *= 1.1;
  while (user_cnt % 2 == 0 || user_cnt % 5 == 0) {
    user_cnt++;
  }

  if (write_only) {
    user_cnt = 3;
  }

  FUNC11 (&user_table, user_cnt);

  users = FUNC6 (sizeof (user) * user_cnt);
  for (i = 0; i < user_cnt; i++) {
    FUNC13 (&users[i]);
  }

  for (i = 1; i <= header.user_cnt; i++) {
    users[i].flags = FUNC2         (users[i].flags, FUNC0         (header.user_index[i].flags));
    users[i].flags = FUNC3 (users[i].flags, FUNC1 (header.user_index[i].flags));
  }

  LRU_head = users;
  LRU_head->next_used = LRU_head->prev_used = LRU_head;

  if (f) {
    FUNC12();
  }

  return f;
}