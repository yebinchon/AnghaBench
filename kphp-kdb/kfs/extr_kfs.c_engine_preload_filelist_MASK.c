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
 scalar_t__* engine_replica_name ; 
 void* engine_snapshot_replica ; 
 scalar_t__* engine_snapshot_replica_name ; 
 scalar_t__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char const*,int) ; 
 void* FUNC3 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*) ; 
 scalar_t__* FUNC5 (char const*) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*,int) ; 

int FUNC8 (const char *main_replica_name, const char *aux_replica_name) {
  int l = FUNC6 (main_replica_name);
  if (!aux_replica_name || !*aux_replica_name || !FUNC4 (aux_replica_name, ".bin") 
     || !FUNC4 (aux_replica_name, main_replica_name)
     || (!FUNC7 (aux_replica_name, main_replica_name, l) && !FUNC4 (aux_replica_name + l, ".bin"))) {
    engine_snapshot_replica_name = engine_replica_name = FUNC5 (main_replica_name);
  } else {
    int l2 = FUNC6 (aux_replica_name);
    if (l2 > 4 && !FUNC4 (aux_replica_name + l2 - 4, ".bin")) {
      l2 -= 4;
    }
    engine_snapshot_replica_name = FUNC5 (main_replica_name);
    if (aux_replica_name[0] == '.') {
      engine_replica_name = FUNC1 (l + l2 + 1);
      FUNC0 (engine_replica_name);
      FUNC2 (engine_replica_name, main_replica_name, l);
      FUNC2 (engine_replica_name + l, aux_replica_name, l2);
      engine_replica_name[l+l2] = 0;
    } else {
      engine_replica_name = FUNC1 (l2 + 1);
      FUNC0 (engine_replica_name);
      FUNC2 (engine_replica_name, aux_replica_name, l2);
      engine_replica_name[l2] = 0;
    }
  }
  FUNC0 (engine_replica_name && engine_snapshot_replica_name);

  engine_replica = FUNC3 (engine_replica_name, 0);
  if (!engine_replica) {
    return -1;
  }
  if (engine_snapshot_replica_name == engine_replica_name) {
    engine_snapshot_replica = engine_replica;
  } else {
    engine_snapshot_replica = FUNC3 (engine_snapshot_replica_name, 1);
    if (!engine_snapshot_replica) {
      return 0;
    }
  }

  return 1;
}