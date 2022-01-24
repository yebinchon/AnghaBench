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

/* Variables and functions */
 int FN ; 
 int MCL_CURRENT ; 
 int MCL_FUTURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int dump_index_mode ; 
 int dump_mode ; 
 char* dump_name ; 
 char* dump_query ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * field_names ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 void* from_ts ; 
 int index_mode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int max_memory ; 
 int mean_event_size ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  my_verbosity ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int query_memory ; 
 int FUNC8 (char*,char*,int*,int*) ; 
 char* stat_queries_file ; 
 int /*<<< orphan*/  stderr ; 
 int test_mode ; 
 void* to_ts ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int write_only ; 

int FUNC10 (int val) {
  switch (val) {
    case 'D':
      FUNC0 (!dump_mode);
      dump_mode = 1;
      dump_query = optarg;
      break;
    case 'e':
      mean_event_size = FUNC1 (optarg);
      FUNC0 (mean_event_size > 50 && mean_event_size < 1000);
      break;
    case 'F':
      from_ts = FUNC1 (optarg);
      if (from_ts < 0) {
        FUNC9();
        return 2;
      }
      break;
    case 'm':
      max_memory = FUNC2 (optarg) * 1048576;
      break;
    case 'N': {
      int num, pos;
      FUNC0 (FUNC8 (optarg, "%d%n", &num, &pos) >= 1 && 0 <= num && num < FN && optarg[pos] == ',');
      if (!FUNC4 (optarg + pos + 1)) {
        FUNC3 (stderr, "Not a valid name: \"%s\"\n", optarg + pos + 1);
        FUNC9();
        return 2;
      }
      field_names[num] = optarg + pos + 1;
      break;
    }
    case 'q':
      query_memory = FUNC2 (optarg) * 1048576;
      break;
    case 'R':
      dump_name = optarg;
      break;
    case 's':
      FUNC0 (!dump_mode);
      dump_mode = 2;
      dump_query = "0";
      stat_queries_file = optarg;
      break;
    case 'T':
      to_ts = FUNC1 (optarg);
      if (to_ts < 0) {
        FUNC9();
        return 2;
      }
      break;
    case 'i':
      index_mode = 1;
      break;
    case 'I':
      dump_index_mode = 1;
      break;
    case 'k':
      if (FUNC5 (MCL_CURRENT | MCL_FUTURE) != 0) {
        FUNC3 (stderr, "error: fail to lock paged memory\n");
      }
      break;
    case 'n':
      errno = 0;
      FUNC6 (FUNC1 (optarg));
      if (errno) {
        FUNC7 ("nice");
      }
      break;
    case 't':
      test_mode = 1;
      query_memory = 500000000;
      break;
    case 'V':
      my_verbosity++;
      break;
    case 'w':
      write_only = 1;
      break;
    default:
      return -1;
  }
  return 0;
}