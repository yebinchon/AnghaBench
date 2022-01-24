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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  crypt_key1 ; 
 int /*<<< orphan*/  crypt_key2 ; 
 scalar_t__ do_decrypt ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifname ; 
 unsigned char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  ofname ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned char*,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned char*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(void)
{
	unsigned char *buf = NULL;
	ssize_t src_len;
	int err;
	int ret = -1;

	src_len = FUNC3(ifname);
	if (src_len < 0) {
		FUNC0("unable to get size of '%s'", ifname);
		goto out;
	}

	buf = FUNC4(src_len);
	if (buf == NULL) {
		FUNC0("no memory for the buffer");
		goto out;
	}

	err = FUNC5(ifname, buf, src_len);
	if (err) {
		FUNC0("unable to read from file '%s'", ifname);
		goto out;
	}

	if (do_decrypt)
		FUNC1(buf, 512, crypt_key2, crypt_key1);
	else
		FUNC1(buf, 512, crypt_key1, crypt_key2);

	err = FUNC6(ofname, buf, src_len);
	if (err) {
		FUNC0("unable to write to file '%s'", ofname);
		goto out;
	}

	ret = 0;

out:
	FUNC2(buf);
	return ret;
}