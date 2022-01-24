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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int disable_crc32 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int index_mode ; 
 int max_memory ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  stderr ; 

int FUNC3 (int val) {
  switch (val) {
    case 'm':
      max_memory = FUNC0 (optarg);
      if (max_memory < 1) {
        max_memory = 1;
      }
      max_memory *= 1048576;
      break;
    case 'D':
      disable_crc32 = 3;
      break;
    case 'i':
      index_mode = 1;
      break;
    case 'k':
      if (FUNC2 (MCL_CURRENT | MCL_FUTURE) != 0) {
        FUNC1 (stderr, "error: fail to lock paged memory\n");
      }
      break;
    default:
      return -1;
  }
  return 0;
}