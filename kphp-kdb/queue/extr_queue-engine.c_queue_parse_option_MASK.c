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
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_filename ; 
 void* engine_id ; 
 void* engine_n ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* http_port ; 
 int max_memory ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* news_port ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  stderr ; 
 int use_stemmer ; 
 void* watchcat_port ; 

int FUNC3 (int val) {
  switch (val) {
    case 'C':
      config_filename = optarg;
      break;
    case 'e':
      engine_n = FUNC0 (optarg);
      break;
    case 'H':
      http_port = FUNC0 (optarg);
      break;
    case 'm':
      max_memory = FUNC0 (optarg);
      if (max_memory < 1) {
        max_memory = 1;
      }
      max_memory *= 1048576;
      break;
    case 'N':
      news_port = FUNC0 (optarg);
      break;
    case 'P':
      watchcat_port = FUNC0 (optarg);
      break;
    case 'q':
      engine_id = FUNC0 (optarg);
      break;
    case 'k':
      if (FUNC2 (MCL_CURRENT | MCL_FUTURE) != 0) {
        FUNC1 (stderr, "error: fail to lock paged memory\n");
      }
      break;
    case 'S':
      use_stemmer = 1;
      break;
    default:
      return -1;
  }
  return 0;
}