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
struct TYPE_4__ {int /*<<< orphan*/  data_len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ record_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2 (const void *x, const void *y) {
  record_t *a = (record_t *) x;
  record_t *b = (record_t *) y;
  const int c = FUNC0 (a, b);
  if (c) { return c; }
  return FUNC1 (a->data, a->data_len, b->data, b->data_len);
}