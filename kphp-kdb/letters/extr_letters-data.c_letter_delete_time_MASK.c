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
struct TYPE_2__ {int time_sent; int /*<<< orphan*/  priority; struct TYPE_2__* next; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  expired_letters ; 
 TYPE_1__ head_letter ; 
 int now ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

void FUNC2 (int gap, const char *error) {
  while (head_letter.next != &head_letter && head_letter.next->time_sent <= now - gap) {
    FUNC0 (head_letter.next->id, head_letter.next->priority, 0, error);
    expired_letters++;
  }

  if (gap < 0) {
    FUNC1 (1, 1);
  }
}