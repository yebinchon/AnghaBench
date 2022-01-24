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
 int /*<<< orphan*/  dbpath_agent_keys ; 
 int /*<<< orphan*/  dbpath_agent_vals ; 
 int /*<<< orphan*/  dbpath_general_stats ; 
 int /*<<< orphan*/  dbpath_hostnames ; 
 int /*<<< orphan*/  dbpath_unique_keys ; 
 void* ht_agent_keys ; 
 void* ht_agent_vals ; 
 void* ht_general_stats ; 
 void* ht_hostnames ; 
 void* ht_unique_keys ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1 (void)
{
  ht_agent_keys = FUNC0 (dbpath_agent_keys);
  ht_agent_vals = FUNC0 (dbpath_agent_vals);
  ht_general_stats = FUNC0 (dbpath_general_stats);
  ht_hostnames = FUNC0 (dbpath_hostnames);
  ht_unique_keys = FUNC0 (dbpath_unique_keys);
}