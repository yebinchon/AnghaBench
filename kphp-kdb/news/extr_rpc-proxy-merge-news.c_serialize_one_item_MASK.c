#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  date; int /*<<< orphan*/  user_id; } ;
typedef  TYPE_1__ item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC1 (item_t *A, int ug_mode) {
  if (ug_mode <= 0) {
    FUNC0 (&A->user_id, 36);
  } else {
    FUNC0 (&A->date, 32);
  }
  return 1;
}