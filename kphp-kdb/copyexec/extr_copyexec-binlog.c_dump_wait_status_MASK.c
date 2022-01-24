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
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  out ; 

void FUNC5 (int status) {
  if (FUNC1(status)) {
    FUNC4 (out, "exit:%d", FUNC0(status));
  } else if (FUNC2(status)) {
    FUNC4 (out, "sig:%d", FUNC3(status));
  } else {
    FUNC4 (out, "%d", status);
  }
}