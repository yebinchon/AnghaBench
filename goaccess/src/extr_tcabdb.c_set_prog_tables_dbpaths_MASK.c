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
 int /*<<< orphan*/  DB_AGENT_KEYS ; 
 int /*<<< orphan*/  DB_AGENT_VALS ; 
 int /*<<< orphan*/  DB_GEN_STATS ; 
 int /*<<< orphan*/  DB_HOSTNAMES ; 
 int /*<<< orphan*/  DB_UNIQUE_KEYS ; 
 void* dbpath_agent_keys ; 
 void* dbpath_agent_vals ; 
 void* dbpath_general_stats ; 
 void* dbpath_hostnames ; 
 void* dbpath_unique_keys ; 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1 (void)
{
  dbpath_agent_keys = FUNC0 (DB_AGENT_KEYS, -1);
  dbpath_agent_vals = FUNC0 (DB_AGENT_VALS, -1);
  dbpath_general_stats = FUNC0 (DB_GEN_STATS, -1);
  dbpath_hostnames = FUNC0 (DB_HOSTNAMES, -1);
  dbpath_unique_keys = FUNC0 (DB_UNIQUE_KEYS, -1);
}