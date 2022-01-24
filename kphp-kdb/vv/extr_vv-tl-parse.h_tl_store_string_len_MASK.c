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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3 (int len) {
  FUNC1 (FUNC2 (4) >= 0);
  FUNC1 (len >= 0);
  FUNC1 (len < (1 << 24));
  if (len < 254) {
    FUNC0 (&len, 1);
  } else {
    int x = 254;
    FUNC0 (&x, 1);
    FUNC0 (&len, 3);
  }
  return 0;
}