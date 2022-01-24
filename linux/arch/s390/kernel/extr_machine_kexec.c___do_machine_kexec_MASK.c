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
struct kimage {int /*<<< orphan*/  start; int /*<<< orphan*/  head; int /*<<< orphan*/  control_code_page; } ;
typedef  int /*<<< orphan*/  (* relocate_kernel_t ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *data)
{
	relocate_kernel_t data_mover;
	struct kimage *image = data;

	FUNC3();
	data_mover = (relocate_kernel_t) FUNC2(image->control_code_page);

	FUNC0(0xfb); /* disable DAT - avoid no-execute */
	/* Call the moving routine */
	(*data_mover)(&image->head, image->start);

	/* Die if kexec returns */
	FUNC1();
}