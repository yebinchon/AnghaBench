#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* wi_private_t ;
struct wi_private {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  partial; int /*<<< orphan*/  in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC3(wi_private_t my) {
  if (my) {
    FUNC0(my->in);
    FUNC0(my->partial);
    FUNC2(my, 0, sizeof(struct wi_private));
    FUNC1(my);
  }
}