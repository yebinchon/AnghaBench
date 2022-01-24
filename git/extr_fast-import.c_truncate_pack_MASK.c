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
struct hashfile_checkpoint {int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct hashfile_checkpoint*) ; 
 int /*<<< orphan*/  pack_file ; 
 int /*<<< orphan*/  pack_size ; 

__attribute__((used)) static void FUNC2(struct hashfile_checkpoint *checkpoint)
{
	if (FUNC1(pack_file, checkpoint))
		FUNC0("cannot truncate pack to skip duplicate");
	pack_size = checkpoint->offset;
}