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
struct seq_file {int dummy; } ;
typedef  int pgprotval_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int _PAGE_GLOBAL ; 
 int _PAGE_NX ; 
 int _PAGE_PAT ; 
 int _PAGE_PAT_LARGE ; 
 int _PAGE_PCD ; 
 int _PAGE_PRESENT ; 
 int _PAGE_PSE ; 
 int _PAGE_PWT ; 
 int _PAGE_RW ; 
 int _PAGE_USER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,int,char*,...) ; 

__attribute__((used)) static void FUNC2(struct seq_file *m, pgprot_t prot, int level, bool dmsg)
{
	pgprotval_t pr = FUNC0(prot);
	static const char * const level_name[] =
		{ "cr3", "pgd", "p4d", "pud", "pmd", "pte" };

	if (!(pr & _PAGE_PRESENT)) {
		/* Not present */
		FUNC1(m, dmsg, "                              ");
	} else {
		if (pr & _PAGE_USER)
			FUNC1(m, dmsg, "USR ");
		else
			FUNC1(m, dmsg, "    ");
		if (pr & _PAGE_RW)
			FUNC1(m, dmsg, "RW ");
		else
			FUNC1(m, dmsg, "ro ");
		if (pr & _PAGE_PWT)
			FUNC1(m, dmsg, "PWT ");
		else
			FUNC1(m, dmsg, "    ");
		if (pr & _PAGE_PCD)
			FUNC1(m, dmsg, "PCD ");
		else
			FUNC1(m, dmsg, "    ");

		/* Bit 7 has a different meaning on level 3 vs 4 */
		if (level <= 4 && pr & _PAGE_PSE)
			FUNC1(m, dmsg, "PSE ");
		else
			FUNC1(m, dmsg, "    ");
		if ((level == 5 && pr & _PAGE_PAT) ||
		    ((level == 4 || level == 3) && pr & _PAGE_PAT_LARGE))
			FUNC1(m, dmsg, "PAT ");
		else
			FUNC1(m, dmsg, "    ");
		if (pr & _PAGE_GLOBAL)
			FUNC1(m, dmsg, "GLB ");
		else
			FUNC1(m, dmsg, "    ");
		if (pr & _PAGE_NX)
			FUNC1(m, dmsg, "NX ");
		else
			FUNC1(m, dmsg, "x  ");
	}
	FUNC1(m, dmsg, "%s\n", level_name[level]);
}