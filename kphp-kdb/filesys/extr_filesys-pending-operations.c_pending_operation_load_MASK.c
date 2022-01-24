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
struct static_pending_operation {int /*<<< orphan*/  st; int /*<<< orphan*/  newpath; scalar_t__ newpath_set; int /*<<< orphan*/  oldpath; scalar_t__ oldpath_set; int /*<<< orphan*/  type; } ;
struct stat {int dummy; } ;
struct pending_operation {int /*<<< orphan*/  st; void* newpath; void* oldpath; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct pending_operation* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

struct pending_operation *FUNC3 (struct static_pending_operation *Q) {
  struct pending_operation *P = FUNC1 (sizeof (struct pending_operation));
  P->type = Q->type;
  if (Q->oldpath_set) {
    P->oldpath = FUNC2 (Q->oldpath);
  }
  if (Q->newpath_set) {
    P->newpath = FUNC2 (Q->newpath);
  }
  FUNC0 (&P->st, &Q->st, sizeof (struct stat));
  return P;
}