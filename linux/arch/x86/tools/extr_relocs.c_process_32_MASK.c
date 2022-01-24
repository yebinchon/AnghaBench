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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ELF_BITS ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

void FUNC11(FILE *fp, int use_real_mode, int as_text,
	     int show_absolute_syms, int show_absolute_relocs,
	     int show_reloc_info)
{
	FUNC10(use_real_mode);
	FUNC5(fp);
	FUNC7(fp);
	FUNC8(fp);
	FUNC9(fp);
	FUNC6(fp);
	if (ELF_BITS == 64)
		FUNC1();
	if (show_absolute_syms) {
		FUNC3();
		return;
	}
	if (show_absolute_relocs) {
		FUNC2();
		return;
	}
	if (show_reloc_info) {
		FUNC4();
		return;
	}
	FUNC0(as_text, use_real_mode);
}