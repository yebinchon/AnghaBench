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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t EIO ; 
 size_t ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  trx_path ; 

__attribute__((used)) static ssize_t FUNC5(FILE *trx, size_t length) {
	uint8_t *buf;

	buf = FUNC3(length);
	if (!buf)
		return -ENOMEM;
	FUNC4(buf, 0, length);

	if (FUNC2(buf, 1, length, trx) != length) {
		FUNC0(stderr, "Couldn't write %zu B to %s\n", length, trx_path);
		FUNC1(buf);
		return -EIO;
	}

	FUNC1(buf);

	return length;
}