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
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  not_full; int /*<<< orphan*/  not_empty; } ;
typedef  int /*<<< orphan*/  GDnsQueue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  QUEUE_SIZE ; 
 int /*<<< orphan*/  gdns_queue ; 
 TYPE_1__ gdns_thread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5 (void)
{
  gdns_queue = FUNC4 (sizeof (GDnsQueue));
  FUNC1 (gdns_queue, QUEUE_SIZE);

  if (FUNC2 (&(gdns_thread.not_empty), NULL))
    FUNC0 ("Failed init thread condition");

  if (FUNC2 (&(gdns_thread.not_full), NULL))
    FUNC0 ("Failed init thread condition");

  if (FUNC3 (&(gdns_thread.mutex), NULL))
    FUNC0 ("Failed init thread mutex");
}