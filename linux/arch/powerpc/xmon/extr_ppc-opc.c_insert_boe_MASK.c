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
typedef  int /*<<< orphan*/  ppc_cpu_t ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long
FUNC3 (unsigned long insn,
	    long value,
	    ppc_cpu_t dialect,
	    const char **errmsg)
{
  if (!FUNC2 (value, dialect, 0))
    *errmsg = FUNC1("invalid conditional option");
  else if (FUNC0 (insn) == 19 && (insn & 0x400) && ! (value & 4))
    *errmsg = FUNC1("invalid counter access");
  else if ((value & 1) != 0)
    *errmsg = FUNC1("attempt to set y bit when using + or - modifier");

  return insn | ((value & 0x1f) << 21);
}