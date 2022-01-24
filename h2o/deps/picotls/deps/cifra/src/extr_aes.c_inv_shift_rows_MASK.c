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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(uint32_t state[4])
{
  uint32_t u, v, x, y;

  u = FUNC1(FUNC0(state[0], 0),
            FUNC0(state[3], 1),
            FUNC0(state[2], 2),
            FUNC0(state[1], 3));

  v = FUNC1(FUNC0(state[1], 0),
            FUNC0(state[0], 1),
            FUNC0(state[3], 2),
            FUNC0(state[2], 3));

  x = FUNC1(FUNC0(state[2], 0),
            FUNC0(state[1], 1),
            FUNC0(state[0], 2),
            FUNC0(state[3], 3));

  y = FUNC1(FUNC0(state[3], 0),
            FUNC0(state[2], 1),
            FUNC0(state[1], 2),
            FUNC0(state[0], 3));

  state[0] = u;
  state[1] = v;
  state[2] = x;
  state[3] = y;
}