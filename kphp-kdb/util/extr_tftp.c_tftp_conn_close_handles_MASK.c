#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ h_idx; } ;
struct TYPE_7__ {TYPE_5__ timer; } ;
struct TYPE_6__ {int fd; int /*<<< orphan*/ * name; } ;
struct TYPE_8__ {TYPE_2__ resend; int /*<<< orphan*/ * netascii; int /*<<< orphan*/ * iobuff; TYPE_1__ file; } ;
typedef  TYPE_3__ tftp_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC6 (tftp_connection_t *c) {
  if (c->file.fd >= 0) {
    FUNC0 (!FUNC1 (c->file.fd));
    c->file.fd = -1;
  }
  if (c->file.name) {
    FUNC5 (c->file.name, FUNC4 (c->file.name) + 1);
    c->file.name = NULL;
  }
  if (c->iobuff != NULL) {
    FUNC2 (c->iobuff);
    c->iobuff = NULL;
  }
  if (c->netascii) {
    FUNC2 (c->netascii);
    c->netascii = NULL;
  }
  if (c->resend.timer.h_idx) {
    FUNC3 (&c->resend.timer);
  }
}