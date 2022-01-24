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
struct static_pending_operation {int type; int oldpath_set; int newpath_set; int /*<<< orphan*/  st; int /*<<< orphan*/  newpath; int /*<<< orphan*/  oldpath; } ;
struct stat {int dummy; } ;
typedef  enum pending_operation_tp { ____Placeholder_pending_operation_tp } pending_operation_tp ;

/* Variables and functions */
 scalar_t__ PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct stat*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const* const) ; 
 scalar_t__ FUNC3 (char const* const) ; 

void FUNC4 (struct static_pending_operation *P, enum pending_operation_tp type, const char *const oldpath, const char *const newpath, struct stat *st) {
  P->type = type;
  P->oldpath_set = P->newpath_set = 0;
  if (oldpath) {
    FUNC0 (FUNC3 (oldpath) < PATH_MAX);
    FUNC2 (P->oldpath, oldpath);
    P->oldpath_set = 1;
  }
  if (newpath) {
    FUNC0 (FUNC3 (newpath) < PATH_MAX);
    FUNC2 (P->newpath, newpath);
    P->newpath_set = 1;
  }
  if (st) {
    FUNC1 (&P->st, st, sizeof (struct stat));
  }
}