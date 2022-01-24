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
struct hd_struct {int dummy; } ;
struct gendisk {int dummy; } ;

/* Variables and functions */
 struct hd_struct* FUNC0 (struct gendisk*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

struct hd_struct *FUNC5(struct gendisk *disk, int partno)
{
	struct hd_struct *part;

	FUNC3();
	part = FUNC0(disk, partno);
	if (part)
		FUNC1(FUNC2(part));
	FUNC4();

	return part;
}