#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ is_end; scalar_t__ suff; } ;
typedef  TYPE_1__ trie_arr_node ;
typedef  scalar_t__ CHAR ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__) ; 

int FUNC2 (trie_arr_node *v, CHAR *s) {
  int res = 0;
  while (*s) {
    while (v->suff && !FUNC1 (v, *s)) {
      v = FUNC0 (v, v->suff);
    }
    v = FUNC0 (v, FUNC1 (v, *s));
    s++;
    res++;
    if (v->is_end) {
      return res;
    }
  }
  return 0;
}