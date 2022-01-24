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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC5(BIO * sbio) { 
		int len;
		char tmpbuf[1024];
		BIO * out = FUNC1(stdout, BIO_NOCLOSE);

		FUNC2(sbio, "GET / HTTP/1.0\n\n");
		for(;;) {
			len = FUNC3(sbio, tmpbuf, 1024);
			if(len <= 0) break;
		FUNC4(out, tmpbuf, len);
		}
		FUNC0(out);
}