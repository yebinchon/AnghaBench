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
struct connection {int fd; int /*<<< orphan*/ * Tmp; int /*<<< orphan*/  Out; int /*<<< orphan*/  In; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC2 (struct connection *c) {
  FUNC1 (stderr, "Dumping buffers of connection %d\nINPUT buffers of %d:\n", c->fd, c->fd);
  FUNC0 (&c->In);
  FUNC1 (stderr, "OUTPUT buffers of %d:\n", c->fd);
  FUNC0 (&c->Out);
  if (c->Tmp) {
    FUNC1 (stderr, "TEMP buffers of %d:\n", c->fd);
    FUNC0 (c->Tmp);
  }
  FUNC1 (stderr, "--- END (dumping buffers of connection %d) ---\n", c->fd);
}