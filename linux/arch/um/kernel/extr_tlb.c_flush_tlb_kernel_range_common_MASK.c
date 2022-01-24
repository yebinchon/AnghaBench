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
struct mm_struct {int dummy; } ;
struct host_vm_change {int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 struct host_vm_change FUNC1 (struct mm_struct*,int,int) ; 
 int PAGE_MASK ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  PGDIR_SIZE ; 
 int /*<<< orphan*/  PMD_SIZE ; 
 int /*<<< orphan*/  PUD_SIZE ; 
 int FUNC2 (unsigned long,int,unsigned long,int /*<<< orphan*/ ,struct host_vm_change*) ; 
 int FUNC3 (unsigned long,unsigned long,int /*<<< orphan*/ ,struct host_vm_change*) ; 
 int FUNC4 (unsigned long,unsigned long,struct host_vm_change*) ; 
 int FUNC5 (struct host_vm_change*,int /*<<< orphan*/ ,int) ; 
 struct mm_struct init_mm ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(unsigned long start, unsigned long end)
{
	struct mm_struct *mm;
	pgd_t *pgd;
	pud_t *pud;
	pmd_t *pmd;
	pte_t *pte;
	unsigned long addr, last;
	int updated = 0, err = 0, force = 0, userspace = 0;
	struct host_vm_change hvc;

	mm = &init_mm;
	hvc = FUNC1(mm, force, userspace);
	for (addr = start; addr < end;) {
		pgd = FUNC8(mm, addr);
		if (!FUNC9(*pgd)) {
			last = FUNC0(addr, PGDIR_SIZE);
			if (last > end)
				last = end;
			if (FUNC7(*pgd)) {
				updated = 1;
				err = FUNC4(addr, last - addr, &hvc);
				if (err < 0)
					FUNC6("munmap failed, errno = %d\n",
					      -err);
			}
			addr = last;
			continue;
		}

		pud = FUNC19(pgd, addr);
		if (!FUNC20(*pud)) {
			last = FUNC0(addr, PUD_SIZE);
			if (last > end)
				last = end;
			if (FUNC18(*pud)) {
				updated = 1;
				err = FUNC4(addr, last - addr, &hvc);
				if (err < 0)
					FUNC6("munmap failed, errno = %d\n",
					      -err);
			}
			addr = last;
			continue;
		}

		pmd = FUNC11(pud, addr);
		if (!FUNC12(*pmd)) {
			last = FUNC0(addr, PMD_SIZE);
			if (last > end)
				last = end;
			if (FUNC10(*pmd)) {
				updated = 1;
				err = FUNC4(addr, last - addr, &hvc);
				if (err < 0)
					FUNC6("munmap failed, errno = %d\n",
					      -err);
			}
			addr = last;
			continue;
		}

		pte = FUNC15(pmd, addr);
		if (!FUNC16(*pte) || FUNC13(*pte)) {
			updated = 1;
			err = FUNC4(addr, PAGE_SIZE, &hvc);
			if (err < 0)
				FUNC6("munmap failed, errno = %d\n",
				      -err);
			if (FUNC16(*pte))
				err = FUNC2(addr, FUNC17(*pte) & PAGE_MASK,
					       PAGE_SIZE, 0, &hvc);
		}
		else if (FUNC14(*pte)) {
			updated = 1;
			err = FUNC3(addr, PAGE_SIZE, 0, &hvc);
		}
		addr += PAGE_SIZE;
	}
	if (!err)
		err = FUNC5(&hvc, hvc.index, 1);

	if (err < 0)
		FUNC6("flush_tlb_kernel failed, errno = %d\n", err);
	return updated;
}