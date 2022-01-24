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
struct explicit_list_iterator {int* last; int* cur; int pos; int /*<<< orphan*/  jump_to; } ;
typedef  int /*<<< orphan*/  iterator_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  explicit_list_iterator_jump_to ; 
 struct explicit_list_iterator* FUNC1 (int) ; 

iterator_t FUNC2 (int *List, int size) {
  if (size <= 0) {
    return FUNC0 ();
  }
  struct explicit_list_iterator *IL = FUNC1 (sizeof (struct explicit_list_iterator));
  IL->jump_to = explicit_list_iterator_jump_to;
  IL->last = List + size;
  IL->cur = List + 1;
  IL->pos = List[0];
  //  vkprintf (2, "building explicit list iterator of length %d, first value %d\n", size, IL->pos);
  return (iterator_t) IL;
}