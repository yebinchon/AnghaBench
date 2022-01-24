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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct ata_show_ering_arg {scalar_t__ written; scalar_t__ buf; } ;
struct ata_ering_entry {int /*<<< orphan*/  err_mask; int /*<<< orphan*/  timestamp; } ;

/* Variables and functions */
 int HZ ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct ata_ering_entry *ent, void *void_arg)
{
	struct ata_show_ering_arg* arg = void_arg;
	u64 seconds;
	u32 rem;

	seconds = FUNC0(ent->timestamp, HZ, &rem);
	arg->written += FUNC2(arg->buf + arg->written,
			        "[%5llu.%09lu]", seconds,
				rem * NSEC_PER_SEC / HZ);
	arg->written += FUNC1(ent->err_mask,
					  arg->buf + arg->written);
	return 0;
}