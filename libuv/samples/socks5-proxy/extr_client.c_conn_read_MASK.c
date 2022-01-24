#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  stream; } ;
struct TYPE_6__ {scalar_t__ rdstate; TYPE_1__ handle; } ;
typedef  TYPE_2__ conn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ c_busy ; 
 scalar_t__ c_stop ; 
 int /*<<< orphan*/  conn_alloc ; 
 int /*<<< orphan*/  conn_read_done ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(conn *c) {
  FUNC0(c->rdstate == c_stop);
  FUNC1(0 == FUNC3(&c->handle.stream, conn_alloc, conn_read_done));
  c->rdstate = c_busy;
  FUNC2(c);
}