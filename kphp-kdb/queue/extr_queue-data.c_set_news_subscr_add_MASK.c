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
struct TYPE_3__ {int /*<<< orphan*/  subs; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ queue ;
typedef  int /*<<< orphan*/  pli ;
typedef  int /*<<< orphan*/  ll ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 

int FUNC2 (ll id, pli *a, int n) {
  queue *q = FUNC0 (id, 0);
  if (q == NULL) {
    return 0;
  }
  id = q->id;

  FUNC1 (id, q->subs, a, n, 1, 0);
  return 1;
}