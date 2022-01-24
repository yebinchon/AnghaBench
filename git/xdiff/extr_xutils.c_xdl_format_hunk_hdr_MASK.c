#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ (* out_line ) (int /*<<< orphan*/ ,TYPE_2__*,int) ;int /*<<< orphan*/  priv; } ;
typedef  TYPE_1__ xdemitcb_t ;
struct TYPE_6__ {char* ptr; int size; } ;
typedef  TYPE_2__ mmbuffer_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 scalar_t__ FUNC2 (char*,long) ; 

__attribute__((used)) static int FUNC3(long s1, long c1, long s2, long c2,
			       const char *func, long funclen,
			       xdemitcb_t *ecb) {
	int nb = 0;
	mmbuffer_t mb;
	char buf[128];

	FUNC0(buf, "@@ -", 4);
	nb += 4;

	nb += FUNC2(buf + nb, c1 ? s1: s1 - 1);

	if (c1 != 1) {
		FUNC0(buf + nb, ",", 1);
		nb += 1;

		nb += FUNC2(buf + nb, c1);
	}

	FUNC0(buf + nb, " +", 2);
	nb += 2;

	nb += FUNC2(buf + nb, c2 ? s2: s2 - 1);

	if (c2 != 1) {
		FUNC0(buf + nb, ",", 1);
		nb += 1;

		nb += FUNC2(buf + nb, c2);
	}

	FUNC0(buf + nb, " @@", 3);
	nb += 3;
	if (func && funclen) {
		buf[nb++] = ' ';
		if (funclen > sizeof(buf) - nb - 1)
			funclen = sizeof(buf) - nb - 1;
		FUNC0(buf + nb, func, funclen);
		nb += funclen;
	}
	buf[nb++] = '\n';

	mb.ptr = buf;
	mb.size = nb;
	if (ecb->out_line(ecb->priv, &mb, 1) < 0)
		return -1;
	return 0;
}