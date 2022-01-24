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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  (* measure_fn ) () ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 

__attribute__((used)) static void FUNC6(measure_fn fn)
{
  FUNC0();
  uint32_t start_cycles = FUNC5();
  fn();
  uint32_t end_cycles = FUNC3();
  uint32_t stack_words = FUNC4();

  FUNC1("cycles = ");
  FUNC2(end_cycles - start_cycles);
  FUNC1("\n");
  FUNC1("stack = ");
  FUNC2(stack_words << 2);
  FUNC1("\n");
}