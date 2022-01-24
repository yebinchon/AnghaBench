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
struct tl_act_extra {int flags; int /*<<< orphan*/  size; int /*<<< orphan*/  header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tl_act_extra*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tl_act_extra*,int /*<<< orphan*/ ) ; 

void FUNC3 (struct tl_act_extra *extra) {
  FUNC1 (extra->header);
  if (!(extra->flags & 1)) {
    return;
  }
  if (extra->flags & 2) {
    FUNC0 (extra);
  } else {
    FUNC2 (extra, extra->size);
  }
}