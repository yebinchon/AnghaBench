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
typedef  size_t u64 ;
struct opal_dev {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int,int) ; 
 size_t TINY_ATOM_DATA_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct opal_dev*,int,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int*,struct opal_dev*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int*,struct opal_dev*,size_t) ; 
 int FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(int *err, struct opal_dev *cmd, u64 number)
{
	size_t len;
	int msb;

	if (!(number & ~TINY_ATOM_DATA_MASK)) {
		FUNC2(err, cmd, number);
		return;
	}

	msb = FUNC4(number);
	len = FUNC0(msb, 8);

	if (!FUNC3(err, cmd, len + 1)) {
		FUNC5("Error adding u64: end of buffer.\n");
		return;
	}
	FUNC1(cmd, false, false, len);
	while (len--)
		FUNC2(err, cmd, number >> (len * 8));
}