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
struct TYPE_3__ {int /*<<< orphan*/  d; int /*<<< orphan*/  sums; int /*<<< orphan*/  used; int /*<<< orphan*/  code; int /*<<< orphan*/  mul1; int /*<<< orphan*/  mul0; } ;
typedef  TYPE_1__ perfect_hash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5 (perfect_hash *h, unsigned char *s) {
  unsigned char *st = s;

  FUNC0(s, h->d);
  FUNC0(s, h->mul0);
  FUNC0(s, h->mul1);

  FUNC4 (s, h->code, FUNC1 (h->d));
  s += FUNC1 (h->d);
  FUNC4 (s, h->used, FUNC3 (h->d));
  s += FUNC3 (h->d);
  FUNC4 (s, h->sums, FUNC2 (h->d));
  s += FUNC2 (h->d);

  return s - st;
}