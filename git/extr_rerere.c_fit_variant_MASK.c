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
struct rerere_dir {int status_nr; scalar_t__ status; int /*<<< orphan*/  status_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char,int) ; 

__attribute__((used)) static void FUNC2(struct rerere_dir *rr_dir, int variant)
{
	variant++;
	FUNC0(rr_dir->status, variant, rr_dir->status_alloc);
	if (rr_dir->status_nr < variant) {
		FUNC1(rr_dir->status + rr_dir->status_nr,
		       '\0', variant - rr_dir->status_nr);
		rr_dir->status_nr = variant;
	}
}