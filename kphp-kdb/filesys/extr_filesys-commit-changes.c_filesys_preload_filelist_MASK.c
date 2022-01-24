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
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* engine_replica ; 
 scalar_t__ engine_replica_name ; 
 void* engine_snapshot_replica ; 
 scalar_t__ engine_snapshot_replica_name ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6 (const char *main_replica_name) {
  int l = FUNC5 (main_replica_name);
  engine_replica_name = FUNC4 (main_replica_name);
  engine_snapshot_replica_name = FUNC1 (l + 6);
  FUNC3 (engine_snapshot_replica_name, main_replica_name);
  FUNC3 (engine_snapshot_replica_name + l, "-fake");
  FUNC0 (engine_replica_name && engine_snapshot_replica_name);
  engine_replica = FUNC2 (engine_replica_name, 0);
  if (!engine_replica) {
    return -1;
  }
  engine_snapshot_replica = FUNC2 (engine_snapshot_replica_name, 1);
  if (!engine_snapshot_replica) {
    return 0;
  }
  return 1;
}