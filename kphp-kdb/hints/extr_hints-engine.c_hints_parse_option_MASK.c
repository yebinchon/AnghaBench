#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  rating ;

/* Variables and functions */
 int MAX_CNT ; 
 void* MAX_RATING ; 
 int MAX_RATING_NORM ; 
 int MAX_RATING_NUM ; 
 int MCL_CURRENT ; 
 int MCL_FUTURE ; 
 int RATING_NORM ; 
 int /*<<< orphan*/  add_on_increment ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 void* default_max_cnt_type ; 
 int dump_mode ; 
 int /*<<< orphan*/ * dump_type ; 
 void* estimate_users ; 
 int /*<<< orphan*/  fading ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int immediate_mode ; 
 int index_mode ; 
 int keep_not_alive ; 
 int* max_cnt_type ; 
 int max_memory ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  new_binlog_name ; 
 int no_changes ; 
 int /*<<< orphan*/  optarg ; 
 int rating_num ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int write_only ; 

int FUNC7 (int val) {
  switch (val) {
    case 'D': {
      dump_mode = 1;
      int d_type = FUNC1 (optarg);
      if (!FUNC2 (d_type)) {
        FUNC6 ();
        return 2;
      }
#ifdef NOHINTS
      assert (dump_type[d_type] == 0);
#endif
      dump_type[d_type]++;
      break;
    }
    case 'e':
      estimate_users = FUNC1 (optarg);
      break;
    case 'F':
      default_max_cnt_type = FUNC1 (optarg);
      break;
    case 'L': {
      int type, max_cnt_t;
      FUNC0 (FUNC5 (optarg, "%d,%d", &type, &max_cnt_t) >= 2);
      FUNC0 (FUNC2 (type));
      max_cnt_type[type] = max_cnt_t;
      break;
    }
    case 'm':
      max_memory = FUNC1 (optarg);
      if (max_memory < 1) {
        max_memory = 1;
      }
      max_memory <<= 20;
      break;
    case 'M':
      MAX_CNT = FUNC1 (optarg);
      FUNC0 (1 <= MAX_CNT && (MAX_CNT + 1) * (long long)sizeof (rating) * (long long)MAX_RATING_NUM <= 2000000000);
      break;
    case 'N':
      RATING_NORM = FUNC1 (optarg);
      FUNC0 (1 <= RATING_NORM && RATING_NORM <= MAX_RATING_NORM);
      RATING_NORM *= 60 * 60;
      break;
    case 'o':
      index_mode = 1;
      new_binlog_name = optarg;
      break;
    case 'q':
      MAX_RATING = FUNC1 (optarg);
      break;
    case 'R':
      rating_num = FUNC1 (optarg);
      FUNC0 (1 <= rating_num && rating_num <= MAX_RATING_NUM);
      break;
    case 'A':
      keep_not_alive = 1;
      break;
    case 'f':
      no_changes = 1;
      break;
#ifdef NOHINTS
    case 'g':
      add_on_increment = 0;
      break;
#endif
    case 'I':
      immediate_mode = 1;
      break;
    case 'i':
      index_mode = 1;
      break;
    case 'k':
      if (FUNC4 (MCL_CURRENT | MCL_FUTURE) != 0) {
        FUNC3 (stderr, "error: fail to lock paged memory\n");
      }
      break;
    case 'w':
      write_only = 1;
      break;
    case 'z':
      fading = 0;
      break;
    default:
      return -1;
  }
  return 0;
}