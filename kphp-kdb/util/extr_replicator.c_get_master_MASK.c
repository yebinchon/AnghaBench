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
struct remote_binlog {struct location_list_entry* first; } ;
struct location_list_entry {int flags; struct location_list_entry* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct remote_binlog*) ; 

struct location_list_entry *FUNC1 (struct remote_binlog *B) {
  FUNC0 (B);

  struct location_list_entry *Q;
  for (Q = B->first; Q; Q = Q->next) {
    if (Q->flags & 1) {
      return Q;
    }
  }
  return 0;
}