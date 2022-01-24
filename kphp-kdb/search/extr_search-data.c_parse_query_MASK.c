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
 scalar_t__ Q_extmode ; 
 scalar_t__ Q_nodes ; 
 scalar_t__ Q_root ; 
 scalar_t__ Q_words ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 char* parse_ptr ; 
 scalar_t__ FUNC1 () ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__,scalar_t__) ; 

char *FUNC5 (char *text, int do_parse_ranges) {
  Q_words = Q_nodes = 0;
  Q_root = 0;

  if (do_parse_ranges) {
    text = FUNC3 (text);
  }

  if (Q_extmode) {
    parse_ptr = text;

    Q_root = FUNC1 ();
    if (!Q_root || *parse_ptr) {
      return parse_ptr;
    }

    Q_root = FUNC0 (Q_root);
    if (!Q_root) {
      return parse_ptr;
    }

    FUNC4 (2, "successfully compiled extended query, %d nodes used, root=%p\n", Q_nodes, Q_root);

    return 0;
  }
  text = FUNC2 (text);

  return 0;
}