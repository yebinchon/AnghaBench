#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bt3c_info {TYPE_2__* p_dev; } ;
typedef  int /*<<< orphan*/  b ;
struct TYPE_4__ {TYPE_1__** resource; } ;
struct TYPE_3__ {unsigned int start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ CONTROL ; 
 int EFAULT ; 
 int EILSEQ ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char*,int,unsigned int*) ; 
 scalar_t__ FUNC6 (char*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct bt3c_info *info,
			      const unsigned char *firmware,
			      int count)
{
	char *ptr = (char *) firmware;
	char b[9];
	unsigned int iobase, tmp, tn;
	unsigned long size, addr, fcs;
	int i, err = 0;

	iobase = info->p_dev->resource[0]->start;

	/* Reset */
	FUNC2(iobase, 0x8040, 0x0404);
	FUNC2(iobase, 0x8040, 0x0400);

	FUNC10(1);

	FUNC2(iobase, 0x8040, 0x0404);

	FUNC10(17);

	/* Load */
	while (count) {
		if (ptr[0] != 'S') {
			FUNC0("Bad address in firmware");
			err = -EFAULT;
			goto error;
		}

		FUNC8(b, 0, sizeof(b));
		FUNC7(b, ptr + 2, 2);
		if (FUNC6(b, 16, &size) < 0)
			return -EINVAL;

		FUNC8(b, 0, sizeof(b));
		FUNC7(b, ptr + 4, 8);
		if (FUNC6(b, 16, &addr) < 0)
			return -EINVAL;

		FUNC8(b, 0, sizeof(b));
		FUNC7(b, ptr + (size * 2) + 2, 2);
		if (FUNC6(b, 16, &fcs) < 0)
			return -EINVAL;

		FUNC8(b, 0, sizeof(b));
		for (tmp = 0, i = 0; i < size; i++) {
			FUNC7(b, ptr + (i * 2) + 2, 2);
			if (FUNC5(b, 16, &tn))
				return -EINVAL;
			tmp += tn;
		}

		if (((tmp + fcs) & 0xff) != 0xff) {
			FUNC0("Checksum error in firmware");
			err = -EILSEQ;
			goto error;
		}

		if (ptr[1] == '3') {
			FUNC1(iobase, addr);

			FUNC8(b, 0, sizeof(b));
			for (i = 0; i < (size - 4) / 2; i++) {
				FUNC7(b, ptr + (i * 4) + 12, 4);
				if (FUNC5(b, 16, &tmp))
					return -EINVAL;
				FUNC3(iobase, tmp);
			}
		}

		ptr   += (size * 2) + 6;
		count -= (size * 2) + 6;
	}

	FUNC10(17);

	/* Boot */
	FUNC1(iobase, 0x3000);
	FUNC9(FUNC4(iobase + CONTROL) | 0x40, iobase + CONTROL);

error:
	FUNC10(17);

	/* Clear */
	FUNC2(iobase, 0x7006, 0x0000);
	FUNC2(iobase, 0x7005, 0x0000);
	FUNC2(iobase, 0x7001, 0x0000);

	return err;
}