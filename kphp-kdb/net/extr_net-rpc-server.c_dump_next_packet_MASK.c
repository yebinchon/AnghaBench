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
struct nb_iterator {int dummy; } ;
struct connection {int /*<<< orphan*/  In; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct nb_iterator*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nb_iterator*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4 (struct connection *c) {
  struct nb_iterator it;
  int i = 0, len = 4, x;
  FUNC3 (&it, &c->In);
  while (i * 4 < len) {
    FUNC0 (FUNC2 (&it, &x, 4) == 4);
    if (!i) {
      len = x;
    }
    FUNC1 (stderr, "%08x ", x);
    if (!(++i & 7)) {
      FUNC1 (stderr, "\n");
    }
  }
  FUNC1 (stderr, "\n");
}