#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  timestamp; } ;
typedef  TYPE_1__ hash_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  total_items ; 
 int /*<<< orphan*/  tree ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int verbosity ; 

void FUNC5 (hash_entry_t *entry) {
  if (verbosity >= 4) {
    FUNC1 (stderr, "add_entry (%p)\n", entry);
  }
  FUNC0 (entry);
  //assert (0 <= x && x < MAX_HASH_TABLE_SIZE + TIME_TABLE_SIZE + 1);


  entry->timestamp = FUNC2 ();
  tree = FUNC4 (tree, entry, FUNC3 ());
  total_items++;
}