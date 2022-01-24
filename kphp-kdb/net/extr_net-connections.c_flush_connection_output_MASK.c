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
struct connection {int flags; int /*<<< orphan*/  fd; TYPE_1__* type; } ;
struct TYPE_2__ {int (* writer ) (struct connection*) ;} ;

/* Variables and functions */
 int C_INCONN ; 
 int C_WANTWR ; 
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct connection*) ; 
 scalar_t__ FUNC3 (struct connection*) ; 
 int FUNC4 (struct connection*) ; 

int FUNC5 (struct connection *c) {
  if (FUNC2 (c) + FUNC3 (c) > 0) {
    c->flags |= C_WANTWR;
    int res = c->type->writer (c);
    if (FUNC2 (c) > 0 && !(c->flags & C_INCONN)) {
      FUNC1 (c->fd, FUNC0 (c));
    }
    return res;
  } else {
    return 0;
  }
}