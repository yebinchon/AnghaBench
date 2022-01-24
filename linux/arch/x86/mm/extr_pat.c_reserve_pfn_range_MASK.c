#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u64 ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;
struct TYPE_2__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int EINVAL ; 
 int _PAGE_CACHE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long,int,int) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long,int) ; 
 int FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (unsigned long,unsigned long) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,unsigned long long,int /*<<< orphan*/ ) ; 
 int FUNC13 (unsigned long,unsigned long,int,int*) ; 

__attribute__((used)) static int FUNC14(u64 paddr, unsigned long size, pgprot_t *vma_prot,
				int strict_prot)
{
	int is_ram = 0;
	int ret;
	enum page_cache_mode want_pcm = FUNC9(*vma_prot);
	enum page_cache_mode pcm = want_pcm;

	is_ram = FUNC8(paddr, paddr + size);

	/*
	 * reserve_pfn_range() for RAM pages. We do not refcount to keep
	 * track of number of mappings of RAM pages. We can assert that
	 * the type requested matches the type of first page in the range.
	 */
	if (is_ram) {
		if (!FUNC7())
			return 0;

		pcm = FUNC6(paddr);
		if (want_pcm != pcm) {
			FUNC12("x86/PAT: %s:%d map pfn RAM range req %s for [mem %#010Lx-%#010Lx], got %s\n",
				current->comm, current->pid,
				FUNC2(want_pcm),
				(unsigned long long)paddr,
				(unsigned long long)(paddr + size - 1),
				FUNC2(pcm));
			*vma_prot = FUNC0((FUNC10(*vma_prot) &
					     (~_PAGE_CACHE_MASK)) |
					     FUNC1(pcm));
		}
		return 0;
	}

	ret = FUNC13(paddr, paddr + size, want_pcm, &pcm);
	if (ret)
		return ret;

	if (pcm != want_pcm) {
		if (strict_prot ||
		    !FUNC4(paddr, size, want_pcm, pcm)) {
			FUNC3(paddr, paddr + size);
			FUNC11("x86/PAT: %s:%d map pfn expected mapping type %s for [mem %#010Lx-%#010Lx], got %s\n",
			       current->comm, current->pid,
			       FUNC2(want_pcm),
			       (unsigned long long)paddr,
			       (unsigned long long)(paddr + size - 1),
			       FUNC2(pcm));
			return -EINVAL;
		}
		/*
		 * We allow returning different type than the one requested in
		 * non strict case.
		 */
		*vma_prot = FUNC0((FUNC10(*vma_prot) &
				      (~_PAGE_CACHE_MASK)) |
				     FUNC1(pcm));
	}

	if (FUNC5(paddr, size, pcm) < 0) {
		FUNC3(paddr, paddr + size);
		return -EINVAL;
	}
	return 0;
}