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
struct stat {int dummy; } ;
struct pending_operation {int type; int /*<<< orphan*/  st; void* newpath; void* oldpath; } ;
typedef  enum pending_operation_tp { ____Placeholder_pending_operation_tp } pending_operation_tp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct stat*,int) ; 
 struct pending_operation* FUNC1 (int) ; 
 void* FUNC2 (char const* const) ; 

struct pending_operation *FUNC3 (enum pending_operation_tp type, const char *const oldpath, const char *const newpath, struct stat *st) {
  struct pending_operation *P = FUNC1 (sizeof (struct pending_operation));
  P->type = type;
  if (oldpath) {
    P->oldpath = FUNC2 (oldpath);
  }
  if (newpath) {
    P->newpath = FUNC2 (newpath);
  }
  if (st) {
    FUNC0 (&P->st, st, sizeof (struct stat));
  }
  return P;
}