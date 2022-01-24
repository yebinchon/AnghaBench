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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  mac ;

/* Variables and functions */
 int ERR_INVALID ; 
 int ERR_IO ; 
 int MAC_ADDRESS_LEN ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char const*,unsigned char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static int FUNC4(int argc, const char *argv[])
{
	unsigned char mac[MAC_ADDRESS_LEN];
	ssize_t c;
	int err;

	if (argc != 1) {
		FUNC2();
		return ERR_INVALID;
	}

	err = FUNC1(argv[0], mac);
	if (err)
		return err;

	c = FUNC3(STDOUT_FILENO, mac, sizeof(mac));
	if (c != sizeof(mac)) {
		FUNC0(stderr, "failed to write to stdout\n");
		return ERR_IO;
	}

	return 0;
}