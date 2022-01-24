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
 int /*<<< orphan*/  aho_black_list ; 
 int /*<<< orphan*/  aho_black_list_size ; 
 int /*<<< orphan*/  black_list ; 
 scalar_t__ buff ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC5 (void) {
  FUNC0 (aho_black_list, aho_black_list_size);

  aho_black_list_size = FUNC4 (black_list, buff, 0);
  FUNC3 ((trie_arr_node *)buff);
  aho_black_list = FUNC1 (aho_black_list_size);
  FUNC2 (aho_black_list, buff, aho_black_list_size);
}