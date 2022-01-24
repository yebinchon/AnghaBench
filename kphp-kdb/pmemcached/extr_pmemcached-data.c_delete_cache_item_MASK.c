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
struct entry {int dummy; } ;

/* Variables and functions */
 struct entry* cache ; 
 int /*<<< orphan*/  cache_deletes ; 
 int /*<<< orphan*/  cache_free ; 
 size_t* cache_next ; 
 size_t* cache_prev ; 
 int* cache_stack ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct entry*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

void FUNC3 (int n) {
  if (verbosity >= 4) { FUNC1 (stderr, "delete_cache_item\n"); }
  struct entry* entry = cache + n;
  FUNC2 (entry);
  FUNC0 (n);
  cache_next[cache_prev[n]] = cache_next[n];
  cache_prev[cache_next[n]] = cache_prev[n];
  cache_stack[cache_free++] = n;
  cache_deletes ++;
}