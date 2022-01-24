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
struct forth_stack {int dummy; } ;
typedef  int /*<<< orphan*/  ExceptionInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct forth_stack*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3 (struct forth_stack *st, ExceptionInfo *e_info) {
  FUNC2 (st, e_info);
  FUNC0 (e_info);
  FUNC1 (e_info);
}