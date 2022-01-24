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
struct TYPE_2__ {scalar_t__ sslkey; scalar_t__ sslcert; scalar_t__ port; scalar_t__ origin; scalar_t__ fifo_out; scalar_t__ fifo_in; scalar_t__ addr; } ;

/* Variables and functions */
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8 (void)
{
  FUNC7 (1);
  if (conf.addr)
    FUNC0 (conf.addr);
  if (conf.fifo_in)
    FUNC2 (conf.fifo_in);
  if (conf.fifo_out)
    FUNC3 (conf.fifo_out);
  if (conf.origin)
    FUNC1 (conf.origin);
  if (conf.port)
    FUNC4 (conf.port);
  if (conf.sslcert)
    FUNC5 (conf.sslcert);
  if (conf.sslkey)
    FUNC6 (conf.sslkey);
}