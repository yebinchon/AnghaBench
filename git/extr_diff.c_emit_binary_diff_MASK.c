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
struct diff_options {int dummy; } ;
typedef  int /*<<< orphan*/  mmfile_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_SYMBOL_BINARY_DIFF_HEADER ; 
 int /*<<< orphan*/  FUNC0 (struct diff_options*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_options*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct diff_options *o,
			     mmfile_t *one, mmfile_t *two)
{
	FUNC1(o, DIFF_SYMBOL_BINARY_DIFF_HEADER, NULL, 0, 0);
	FUNC0(o, one, two);
	FUNC0(o, two, one);
}