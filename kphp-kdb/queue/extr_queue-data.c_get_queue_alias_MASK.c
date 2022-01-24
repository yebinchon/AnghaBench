#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ queue ;
typedef  int /*<<< orphan*/  ll ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int FUNC4 (char *s, ll *res) {
  if (!FUNC0 (s, FUNC1 (s))) {
    return 0;
  }
  queue *q = FUNC2 (s, 1);
  FUNC3 (q);
  *res = q->id;
  return 1;
}