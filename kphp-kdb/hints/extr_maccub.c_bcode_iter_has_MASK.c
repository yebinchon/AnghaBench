#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int len; int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ bcode_iterator ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int) ; 

int  FUNC1 (bcode_iterator *it, int val) {
  if (it->ptr == NULL) {
    return 0;
  }

  int n = it->len;

  int l = 0, r = n, c;
  while (l + 1 < r) {
    c = (l + r) / 2;
    if (FUNC0 (it, c) >= val) {
      l = c;
    } else {
      r = c;
    }
  }

  return FUNC0 (it, l) == val;
}