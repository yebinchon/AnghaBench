#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  (* kernel_entry_t ) (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;
struct TYPE_6__ {int /*<<< orphan*/  write; } ;
struct TYPE_5__ {unsigned long (* finalize ) () ;} ;
struct TYPE_4__ {int /*<<< orphan*/  (* exit ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  _dtb_start ; 
 scalar_t__ _end ; 
 scalar_t__ _initrd_end ; 
 scalar_t__ _initrd_start ; 
 TYPE_3__ console_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ dt_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (char*) ; 
 TYPE_1__ platform_ops ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  ps3_console_write ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__ const,int,int) ; 
 unsigned long FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC12(void)
{
	const u32 heapsize = 0x1000000 - (u32)_end; /* 16MiB */
	void *chosen;
	unsigned long ft_addr;
	u64 rm_size;

	console_ops.write = ps3_console_write;
	platform_ops.exit = ps3_exit;

	FUNC4("\n-- PS3 bootwrapper --\n");

	FUNC9(_end, heapsize, 32, 64);
	FUNC1(_dtb_start);

	chosen = FUNC2("/chosen");

	FUNC7(&rm_size);
	FUNC0(0, rm_size);

	if (_initrd_end > _initrd_start) {
		FUNC8(chosen, "linux,initrd-start", (u32)(_initrd_start));
		FUNC8(chosen, "linux,initrd-end", (u32)(_initrd_end));
	}

	FUNC3(chosen);

	ft_addr = dt_ops.finalize();

	FUNC5();

	FUNC4(" flat tree at 0x%lx\n\r", ft_addr);

	((kernel_entry_t)0)(ft_addr, 0, NULL);

	FUNC6();
}