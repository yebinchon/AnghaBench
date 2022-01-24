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
struct TYPE_6__ {unsigned long start; scalar_t__ end; } ;
struct TYPE_5__ {unsigned long start; scalar_t__ end; } ;
struct TYPE_4__ {int /*<<< orphan*/  control_code_page; } ;

/* Variables and functions */
 scalar_t__ KEXEC_CONTROL_PAGE_SIZE ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__ crashk_low_res ; 
 TYPE_2__ crashk_res ; 
 TYPE_1__* kexec_crash_image ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(bool protect)
{
	unsigned long control;

	FUNC1(crashk_low_res.start, crashk_low_res.end, protect);

	/* Don't touch the control code page used in crash_kexec().*/
	control = FUNC0(FUNC2(kexec_crash_image->control_code_page));
	/* Control code page is located in the 2nd page. */
	FUNC1(crashk_res.start, control + PAGE_SIZE - 1, protect);
	control += KEXEC_CONTROL_PAGE_SIZE;
	FUNC1(control, crashk_res.end, protect);
}