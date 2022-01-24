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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t EACCES ; 
 size_t EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  trx_path ; 

__attribute__((used)) static ssize_t FUNC5(FILE *trx, const char *in_path) {
	FILE *in;
	size_t bytes;
	ssize_t length = 0;
	uint8_t buf[1024];

	in = FUNC1(in_path, "r");
	if (!in) {
		FUNC2(stderr, "Couldn't open %s\n", in_path);
		return -EACCES;
	}

	while ((bytes = FUNC3(buf, 1, sizeof(buf), in)) > 0) {
		if (FUNC4(buf, 1, bytes, trx) != bytes) {
			FUNC2(stderr, "Couldn't write %zu B to %s\n", bytes, trx_path);
			length = -EIO;
			break;
		}
		length += bytes;
	}

	FUNC0(in);

	return length;
}