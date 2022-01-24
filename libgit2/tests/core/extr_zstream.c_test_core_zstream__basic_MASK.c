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
typedef  int /*<<< orphan*/  out ;
typedef  int /*<<< orphan*/  git_zstream ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ZSTREAM_DEFLATE ; 
 int /*<<< orphan*/  GIT_ZSTREAM_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  data ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
	git_zstream z = GIT_ZSTREAM_INIT;
	char out[128];
	size_t outlen = sizeof(out);

	FUNC2(FUNC6(&z, GIT_ZSTREAM_DEFLATE));
	FUNC2(FUNC7(&z, data, FUNC8(data) + 1));
	FUNC2(FUNC5(out, &outlen, &z));
	FUNC1(FUNC3(&z));
	FUNC1(outlen > 0);
	FUNC4(&z);

	FUNC0(data, FUNC8(data) + 1, out, outlen);
}