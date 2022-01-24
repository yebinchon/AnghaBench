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
 long long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  auto_create_new_versions ; 
 int binlog_cyclic_mode ; 
 int /*<<< orphan*/  create_day_start ; 
 int custom_version_names ; 
 long long default_timezone ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ignore_set_timezone ; 
 int index_mode ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 double max_counters_growth_percent ; 
 int /*<<< orphan*/  memcache_auto_answer_mode ; 
 long long memory_to_index ; 
 int mode_ignore_user_id ; 
 int /*<<< orphan*/  monthly_stat ; 
 int /*<<< orphan*/  optarg ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,double*) ; 
 int /*<<< orphan*/  test_mode ; 

int FUNC4 (int val) {
  switch (val) {
  case 'f':
    memcache_auto_answer_mode ++;
    break;
  case 'T':
    test_mode ++;
    break;
  case 'm':
    mode_ignore_user_id = 1;
    break;
  case 'i':
    index_mode = 1;
    break;
  case 'M':
    memory_to_index = FUNC0(optarg) * (long long) 1024 * 1024;
    break;
  case 'y':
    auto_create_new_versions = 0;
    break;
  case 'x':
    custom_version_names = 1;
    auto_create_new_versions = 0;
    break;
  case 'E':
    monthly_stat ++;
    break;
  case 't':
    ignore_set_timezone ++;
    break;
  case 'D':
    create_day_start ++;
    break;
  case 'P':
    if ((FUNC3 (optarg, "%lf", &max_counters_growth_percent) != 1) || max_counters_growth_percent < 0.1) {
      FUNC2 ("Illegal -P option: %s\n", optarg);
      FUNC1 (1);
    }
    break;
  case 'S':
    default_timezone = FUNC0 (optarg);
    break;
  case 1000:
    binlog_cyclic_mode = 1;
    break;
  default:
    return -1;
  }
  return 0;
}