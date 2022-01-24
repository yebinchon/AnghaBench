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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ OPENSSL_VERSION_NUMBER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

void
FUNC6(void)
{
#if (OPENSSL_VERSION_NUMBER < 0x10100000L) || \
	(defined(LIBRESSL_VERSION_NUMBER) && LIBRESSL_VERSION_NUMBER < 0x20700000L)
	FUNC2();
	FUNC0();
	FUNC3();
	FUNC1();
	if (FUNC4() != OPENSSL_VERSION_NUMBER) {
		FUNC5("WARN",
			("Version mismatch for openssl: compiled with %lx but running with %lx",
			(unsigned long)OPENSSL_VERSION_NUMBER, (unsigned long)FUNC4()));
	}
#endif
}