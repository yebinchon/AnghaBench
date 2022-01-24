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
struct TYPE_2__ {long long key_hash; int next_entry; } ;

/* Variables and functions */
 size_t FUNC0 (long long) ; 
 TYPE_1__* entry_buffer ; 
 int* hash_st ; 

int FUNC1 (long long hash) {
  int i = hash_st[FUNC0 (hash)];

  while (i != -1 && hash != entry_buffer[i].key_hash) {
    i = entry_buffer[i].next_entry;
  }

  return i;
}