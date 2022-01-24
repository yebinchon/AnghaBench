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
 scalar_t__ Q_limit ; 
 scalar_t__ Q_nodes ; 
 int /*<<< orphan*/  Q_root ; 
 scalar_t__ Q_words ; 
 long long FUNC0 (int /*<<< orphan*/ ,long long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* parse_ptr ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4 (long long item_id, char **text) {
  FUNC1 ();
  Q_limit = 0;
  Q_words = Q_nodes = 0;
  parse_ptr = *text;
  Q_root = FUNC2 ();
  if (!Q_root || *parse_ptr) {
    FUNC1 ();
    *text = parse_ptr;
    return -1;
  }
  if (FUNC3 (Q_root) < 0) {
    FUNC1 ();
    return -1;
  }
  int r = (item_id == FUNC0 (Q_root, item_id)) ? 1 : 0;
  FUNC1 ();
  return r;
}