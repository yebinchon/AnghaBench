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
struct fwimage_trailer {int size; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fwimage_trailer*,char*,int) ; 

__attribute__((used)) static int
FUNC3(FILE *in, FILE *out, struct fwimage_trailer *tr, int maxlen)
{
	while (1) {
		char buf[512];
		int len;

		len = FUNC0(buf, 1, sizeof(buf), in);
		if (!len)
			break;

		maxlen -= len;
		if (maxlen < 0)
			return 1;

		tr->size += len;
		FUNC2(tr, buf, len);
		FUNC1(buf, len, 1, out);
	}

	return 0;
}