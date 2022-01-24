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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  black_list ; 
 scalar_t__ buff ; 
 int /*<<< orphan*/  buff2 ; 
 int /*<<< orphan*/ * fd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC5 (void) {
  // TODO: fix to trie_save_text
  FUNC3 (black_list, buff, 0);
  int len = 0;
  FUNC2 ((trie_arr_node *)buff, buff2, &len);
  FUNC1 ((trie_arr_node *)buff);

  FUNC0 (FUNC4 (fd[1], buff2, len) == len);

  //fprintf (stderr, "black_list_write = %d <%s>\n", len, buff2);
  return len;
}