#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 

void FUNC5(void)
{
	git_buf buf = GIT_BUF_INIT;

	/*     t  h  i  s
	 * 0x 74 68 69 73
     * 0b 01110100 01101000 01101001 01110011
	 * 0b 011101 000110 100001 101001 011100 110000
	 * 0x 1d 06 21 29 1c 30
	 *     d  G  h  p  c  w
	 */
	FUNC1(FUNC4(&buf, "this", 4));
	FUNC0("dGhpcw==", buf.ptr);

	FUNC2(&buf);
	FUNC1(FUNC4(&buf, "this!", 5));
	FUNC0("dGhpcyE=", buf.ptr);

	FUNC2(&buf);
	FUNC1(FUNC4(&buf, "this!\n", 6));
	FUNC0("dGhpcyEK", buf.ptr);

	FUNC3(&buf);
}