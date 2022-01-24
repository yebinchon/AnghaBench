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

/* Variables and functions */
 int /*<<< orphan*/  HOSTS ; 
 int /*<<< orphan*/  MTRC_AGENTS ; 
 int /*<<< orphan*/  free_agent_values ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2 (void)
{
  void *hash = FUNC0 (HOSTS, MTRC_AGENTS);
  if (!hash)
    return;

  FUNC1 (hash, free_agent_values, NULL);
}