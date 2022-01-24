#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ user ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int,int) ; 
 long long FUNC3 (TYPE_1__*,int) ; 

int FUNC4 (user *u, int a, int b, int num) {
  int x = 0;
  if (FUNC0(u->flags) == 1) {
    x = FUNC1 (*FUNC2 (u, a, num), *FUNC2 (u, b, num));
  }
  if (x != 0) {
    return x;
  }

  // TODO optimize if needed
  long long a1 = FUNC3 (u, a);
  long long b1 = FUNC3 (u, b);

  if (a1 < b1) {
    return 1;
  } else if (a1 > b1) {
    return -1;
  }

  return 0;
}