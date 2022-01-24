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
 int MCL_CURRENT ; 
 int MCL_FUTURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int disable_crc32 ; 
 int /*<<< orphan*/  dump_fields_str ; 
 int /*<<< orphan*/  dump_unimported_mode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int index_mode ; 
 int max_memory ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  optarg ; 
 int repair_binlog_mode ; 
 int /*<<< orphan*/  stderr ; 
 int write_only ; 

int FUNC4 (int val) {
  switch (val) {
    case 'D':
      disable_crc32 = FUNC1 (optarg);
      FUNC0 (0 <= disable_crc32 && disable_crc32 <= 3);
      break;
    case 'm':
      max_memory = FUNC1 (optarg);
      if (max_memory < 1) {
        max_memory = 1;
      }
      max_memory *= 1048576;
      break;
    case 'M':
      dump_fields_str = optarg;
      index_mode = 1;
      break;
    case 'i':
      index_mode = 1;
      break;
    case 'I':
      dump_unimported_mode++;
      index_mode = 1;
      break;
    case 'k':
      if (FUNC3 (MCL_CURRENT | MCL_FUTURE) != 0) {
        FUNC2 (stderr, "error: fail to lock paged memory\n");
      }
      break;
    case 'R':
      repair_binlog_mode = 1;
      index_mode = 1;
      break;
    case 'w':
      write_only = 1;
      break;
    default:
      return -1;
  }
  return 0;
}