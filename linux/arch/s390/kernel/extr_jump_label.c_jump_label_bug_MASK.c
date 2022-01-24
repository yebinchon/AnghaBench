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
struct jump_entry {int dummy; } ;
struct insn {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct jump_entry*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char*,...) ; 

__attribute__((used)) static void FUNC3(struct jump_entry *entry, struct insn *expected,
			   struct insn *new)
{
	unsigned char *ipc = (unsigned char *)FUNC0(entry);
	unsigned char *ipe = (unsigned char *)expected;
	unsigned char *ipn = (unsigned char *)new;

	FUNC2("Jump label code mismatch at %pS [%p]\n", ipc, ipc);
	FUNC2("Found:    %6ph\n", ipc);
	FUNC2("Expected: %6ph\n", ipe);
	FUNC2("New:      %6ph\n", ipn);
	FUNC1("Corrupted kernel text");
}