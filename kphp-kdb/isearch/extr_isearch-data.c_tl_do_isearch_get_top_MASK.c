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
struct tl_isearch_get_top {int /*<<< orphan*/  limit; } ;
struct tl_act_extra {scalar_t__ extra; } ;

/* Variables and functions */
 int TL_VECTOR ; 
 int* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__* names ; 
 scalar_t__ names_buff ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

int FUNC3 (struct tl_act_extra *extra) {
  struct tl_isearch_get_top *e = (struct tl_isearch_get_top *)extra->extra;

  int *v = FUNC0 (e->limit);

  FUNC1 (TL_VECTOR);
  FUNC1 (v[0]);
  int i;
  for (i = 1; i <= v[0]; i++) {
    FUNC2 (names_buff + names[v[i]] + 1);
  }

  return 1;
}