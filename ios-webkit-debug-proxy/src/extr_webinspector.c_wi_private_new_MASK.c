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
struct TYPE_5__ {void* partial; void* in; } ;

/* Variables and functions */
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

wi_private_t FUNC4() {
  wi_private_t my = (wi_private_t)FUNC1(sizeof(
        struct wi_private));
  if (my) {
    FUNC2(my, 0, sizeof(struct wi_private));
    my->in = FUNC0();
    my->partial = FUNC0();
    if (!my->in || !my->partial) {
      FUNC3(my);
      return NULL;
    }
  }
  return my;
}