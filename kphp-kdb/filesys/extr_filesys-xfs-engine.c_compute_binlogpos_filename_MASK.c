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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  binlogpos_filename ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC2 (char*) ; 
 char* szBinlogpos ; 
 char* work_dir ; 
 int work_dir_length ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4 (void) {
  int binlogpos_filename_length = work_dir_length + 1 + FUNC2 (szBinlogpos);
  binlogpos_filename = FUNC3 (binlogpos_filename_length + 1);
  FUNC0 (FUNC1 (binlogpos_filename, "%s/%s", work_dir, szBinlogpos) == binlogpos_filename_length);
}