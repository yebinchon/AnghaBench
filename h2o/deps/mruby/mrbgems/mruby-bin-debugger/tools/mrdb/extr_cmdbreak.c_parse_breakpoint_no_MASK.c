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
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ BPNO_LETTER_NUM ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static int32_t
FUNC5(char* args)
{
  char* ps = args;
  uint32_t l;

  if ((*ps == '0')||(FUNC4(ps) >= BPNO_LETTER_NUM)) {
    return 0;
  }

  while (!(FUNC0(*ps)||FUNC1(*ps))) {
    if (!FUNC2(*ps)) {
      return 0;
    }
    ps++;
  }

  FUNC3(l, args);
  return l;
}