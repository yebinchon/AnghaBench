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
struct TYPE_2__ {unsigned long default_lma; int /*<<< orphan*/  (* entry ) () ;int /*<<< orphan*/  image_size; int /*<<< orphan*/  dynsym_start; int /*<<< orphan*/  rela_dyn_end; int /*<<< orphan*/  rela_dyn_start; int /*<<< orphan*/  bootdata_preserved_off; int /*<<< orphan*/  bootdata_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_KERNEL_UNCOMPRESSED ; 
 int /*<<< orphan*/  CONFIG_RANDOMIZE_BASE ; 
 int /*<<< orphan*/  CONFIG_RELOCATABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long __kaslr_offset ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 unsigned long FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 scalar_t__ kaslr_enabled ; 
 unsigned long FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 unsigned long FUNC12 (unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 TYPE_1__ vmlinux ; 

void FUNC20(void)
{
	unsigned long random_lma;
	unsigned long safe_addr;
	void *img;

	FUNC17();
	safe_addr = FUNC7();
	safe_addr = FUNC12(safe_addr);
	FUNC19();
	FUNC13(safe_addr);
	FUNC14();
	FUNC15();
	FUNC11();
	FUNC16();
	FUNC4();

	random_lma = __kaslr_offset = 0;
	if (FUNC0(CONFIG_RANDOMIZE_BASE) && kaslr_enabled) {
		random_lma = FUNC5(safe_addr);
		if (random_lma) {
			__kaslr_offset = random_lma - vmlinux.default_lma;
			img = (void *)vmlinux.default_lma;
			vmlinux.default_lma += __kaslr_offset;
			vmlinux.entry += __kaslr_offset;
			vmlinux.bootdata_off += __kaslr_offset;
			vmlinux.bootdata_preserved_off += __kaslr_offset;
			vmlinux.rela_dyn_start += __kaslr_offset;
			vmlinux.rela_dyn_end += __kaslr_offset;
			vmlinux.dynsym_start += __kaslr_offset;
		}
	}

	if (!FUNC0(CONFIG_KERNEL_UNCOMPRESSED)) {
		img = FUNC3();
		FUNC9((void *)vmlinux.default_lma, img, vmlinux.image_size);
	} else if (__kaslr_offset)
		FUNC8((void *)vmlinux.default_lma, img, vmlinux.image_size);

	FUNC1();
	FUNC2();
	if (FUNC0(CONFIG_RELOCATABLE))
		FUNC6(__kaslr_offset);

	if (__kaslr_offset) {
		/* Clear non-relocated kernel */
		if (FUNC0(CONFIG_KERNEL_UNCOMPRESSED))
			FUNC10(img, 0, vmlinux.image_size);
	}
	vmlinux.entry();
}