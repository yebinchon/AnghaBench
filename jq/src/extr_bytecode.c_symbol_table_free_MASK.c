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
struct symbol_table {int /*<<< orphan*/  cfunc_names; struct symbol_table* cfunctions; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct symbol_table*) ; 

__attribute__((used)) static void FUNC2(struct symbol_table* syms) {
  FUNC1(syms->cfunctions);
  FUNC0(syms->cfunc_names);
  FUNC1(syms);
}