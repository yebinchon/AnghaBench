#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned char* code; int* used; int* sums; int /*<<< orphan*/  d; int /*<<< orphan*/  mul1; int /*<<< orphan*/  mul0; } ;
typedef  TYPE_1__ perfect_hash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4 (perfect_hash *h, unsigned char *s) {
  unsigned char *st = s;

  FUNC0(s, h->d);
  FUNC0(s, h->mul0);
  FUNC0(s, h->mul1);

  h->code = s;
  s += FUNC1 (h->d);
  h->used = (int *)s;
  s += FUNC3 (h->d);
  h->sums = (int *)s;
  s += FUNC2 (h->d);

  return s - st;
}