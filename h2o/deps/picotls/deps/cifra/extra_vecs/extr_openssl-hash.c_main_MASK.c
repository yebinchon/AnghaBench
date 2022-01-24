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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(void)
{
  FUNC5("SHA1", FUNC0(), MAX_LENGTH);
  FUNC5("SHA224", FUNC1(), MAX_LENGTH);
  FUNC5("SHA256", FUNC2(), MAX_LENGTH);
  FUNC5("SHA384", FUNC3(), MAX_LENGTH);
  FUNC5("SHA512", FUNC4(), MAX_LENGTH);
  return 0;
}