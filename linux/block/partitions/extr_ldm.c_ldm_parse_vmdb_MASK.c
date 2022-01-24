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
typedef  int /*<<< orphan*/  u8 ;
struct vmdb {int ver_major; int ver_minor; scalar_t__ vblk_size; scalar_t__ last_vblk_seq; scalar_t__ vblk_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MAGIC_VMDB ; 
 void* FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static bool FUNC6 (const u8 *data, struct vmdb *vm)
{
	FUNC0 (!data || !vm);

	if (MAGIC_VMDB != FUNC2(data)) {
		FUNC3 ("Cannot find the VMDB, database may be corrupt.");
		return false;
	}

	vm->ver_major = FUNC1(data + 0x12);
	vm->ver_minor = FUNC1(data + 0x14);
	if ((vm->ver_major != 4) || (vm->ver_minor != 10)) {
		FUNC5 ("Expected VMDB version %d.%d, got %d.%d. "
			"Aborting.", 4, 10, vm->ver_major, vm->ver_minor);
		return false;
	}

	vm->vblk_size     = FUNC2(data + 0x08);
	if (vm->vblk_size == 0) {
		FUNC5 ("Illegal VBLK size");
		return false;
	}

	vm->vblk_offset   = FUNC2(data + 0x0C);
	vm->last_vblk_seq = FUNC2(data + 0x04);

	FUNC4 ("Parsed VMDB successfully.");
	return true;
}