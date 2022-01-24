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
struct proc_monitor_info {long long updated_at; int binlog_data_offset; } ;
struct proc_data {struct proc_monitor_info* minfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc_monitor_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc_monitor_info*) ; 
 long long FUNC3 (int) ; 

int FUNC4 (struct proc_data *PData, int binlog_data_offset) {
  FUNC0 (PData);

  long long updated_at = FUNC3 (1000000);

  int i;
  for (i = 0; i < 2; i++) {
    struct proc_monitor_info *S = PData->minfo + i;
    FUNC1 (S);
    S->updated_at = updated_at;
    S->binlog_data_offset = binlog_data_offset;
    FUNC2 (S);
  }

  return 0;
}