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
struct TYPE_4__ {scalar_t__ i; scalar_t__ len; scalar_t__ val; int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ bcode_iterator ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__) ; 

void FUNC1 (bcode_iterator *it) {
  if (it->ptr != NULL && it->i + 1 < it->len) {
    it->val = FUNC0 (it, ++it->i);
  } else {
    it->val = 0;
  }
}