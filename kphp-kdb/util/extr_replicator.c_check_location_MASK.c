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
struct remote_binlog {char* binlog_tag; struct location_list_entry* first; } ;
struct location_list_entry {int flags; char* location; struct location_list_entry* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct remote_binlog*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC2 (struct remote_binlog *B) {
  FUNC0 (B);

  int l_cnt = 0, m_cnt = 0;
  struct location_list_entry *Q;
  for (Q = B->first; Q; Q = Q->next) {
    if (Q->flags & 2) {
      l_cnt++;
    }
    if (Q->flags & 1) {
      m_cnt++;
    }
  }

  if (l_cnt > 1) {
    FUNC1 (stderr, "error: binlog %s has %d local locations:", B->binlog_tag, l_cnt);
    for (Q = B->first; Q; Q = Q->next) {
      if (Q->flags & 2) {
        FUNC1 (stderr, " %s", Q->location);
      }
    }
    FUNC1 (stderr, "\n");
    return 1;
  }

  if (!m_cnt) {
    FUNC1 (stderr, "error: binlog %s has no master location\n", B->binlog_tag);
    return 1;
  }

  if (m_cnt > 1) {
    FUNC1 (stderr, "error: binlog %s has %d master locations:", B->binlog_tag, m_cnt);
    for (Q = B->first; Q; Q = Q->next) {
      if (Q->flags & 1) {
        FUNC1 (stderr, " %s", Q->location);
      }
    }
    FUNC1 (stderr, "\n");
    return 1;
  }

  return 0;
}