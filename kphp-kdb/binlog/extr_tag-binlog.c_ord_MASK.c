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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char) ; 
 char FUNC4 (char) ; 

__attribute__((used)) static unsigned FUNC5 (char x) {
  if (!FUNC2 (x)) {
    FUNC3 ("'%c' isn't hex digit\n", x);
    FUNC0 (1);
  }
  if (FUNC1 (x)) {
    return x - 48;
  }
  x = FUNC4 (x);
  return x - 87;
}