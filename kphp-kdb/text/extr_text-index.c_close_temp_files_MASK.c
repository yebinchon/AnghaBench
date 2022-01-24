#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ fd; scalar_t__ filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int passes ; 
 int /*<<< orphan*/  temp_binlog_directory ; 
 TYPE_1__* temp_file ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

int FUNC4 (int op) {
  int i, c = 0;
  if (!temp_binlog_directory) {
    return -1;
  }
  for (i = 0; i < passes; i++) {
    if ((op & 1) && temp_file[i].fd > 0) {
      FUNC0 (FUNC1 (temp_file[i].fd) >= 0);
      temp_file[i].fd = 0;
      c++;
    }
    if ((op & 2) && temp_file[i].filename) {
      FUNC0 (FUNC3 (temp_file[i].filename) >= 0);
      FUNC2 (temp_file[i].filename);
      temp_file[i].filename = 0;
      c++;
    }
  }
  return c;
}