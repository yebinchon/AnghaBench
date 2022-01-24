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
struct TYPE_2__ {int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int active_gdns ; 
 int /*<<< orphan*/  dns_worker ; 
 TYPE_1__ gdns_thread ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3 (void)
{
  int th;

  active_gdns = 1;
  th = FUNC1 (&(gdns_thread.thread), NULL, (void *) &dns_worker, NULL);
  if (th)
    FUNC0 ("Return code from pthread_create(): %d", th);
  FUNC2 (gdns_thread.thread);
}