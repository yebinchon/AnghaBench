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
typedef  int /*<<< orphan*/  transaction_t ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static void FUNC4 (transaction_t *T, char binlog_name[PATH_MAX]) {
  char dir[PATH_MAX], b[28];
  FUNC1 (T, dir);
  FUNC2 (T, b);
  FUNC0 (FUNC3 (binlog_name, PATH_MAX, "%s/.binlog.%s", dir, b) < PATH_MAX);
}