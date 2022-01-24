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
typedef  int /*<<< orphan*/  trie_arr_node ;

/* Variables and functions */
 int MAX_BUFF ; 
 int /*<<< orphan*/  aho_black_list ; 
 int /*<<< orphan*/  aho_black_list_size ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  black_list ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 char* buff ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int verbosity ; 

void FUNC8 (int size) {
  FUNC0 (size + 1 < MAX_BUFF);

  int r = FUNC5 (fd[0], buff, size);
  if (verbosity > 1) {
    FUNC3 (stderr, "black list read %d\n", size);
  }
  if (r != size) {
    FUNC3 (stderr, "error reading header from index file: read %d bytes instead of %d at position 0: %m\n", r, size);
  }
  FUNC0 (r == size);

  buff[size] = 0;

  if (verbosity > 2) {
    FUNC3 (stderr, "ADD %s\n", buff);
  }
  FUNC1 (buff, 0);

  aho_black_list_size = FUNC7 (black_list, buff, 0);
  FUNC6 ((trie_arr_node *)buff);
  aho_black_list = FUNC2 (aho_black_list_size);
  FUNC4 (aho_black_list, buff, aho_black_list_size);
}