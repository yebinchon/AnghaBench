#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int key_len; int data_len; int timestamp; scalar_t__ key; scalar_t__ data; } ;
typedef  TYPE_1__ hash_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  entry_memory ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tree ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 

void FUNC7 (hash_entry_t *entry) {
  FUNC0 (entry);
  if (verbosity >= 4) {
    FUNC3(stderr, "deleted %p\n", entry);
    FUNC1 (entry);
  }

  FUNC2 (entry);

  tree = FUNC5 (tree, entry);
  
  FUNC6 (entry->key, entry->key_len + 1); 
  FUNC6 (entry->data, entry->data_len + 1);
  entry_memory -= entry->key_len + entry->data_len + 2;

  entry->key = 0;
  entry->key_len = -1;
  entry->timestamp = -1;

  FUNC4 (entry);
}