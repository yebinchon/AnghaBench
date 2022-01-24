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
typedef  int /*<<< orphan*/  mbedtls_pk_context ;

/* Variables and functions */
 int /*<<< orphan*/  MBEDTLS_PK_RSA ; 
 int /*<<< orphan*/  _urandom ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC7(mbedtls_pk_context *key, int ksize, int exp, bool pem)
{
	FUNC3(key);
	FUNC1(stderr, "Generating RSA private key, %i bit long modulus\n", ksize);
	FUNC5(key, FUNC2(MBEDTLS_PK_RSA));
	if (FUNC6(FUNC4(*key), _urandom, NULL, ksize, exp)) {
		FUNC1(stderr, "error: key generation failed\n");
		FUNC0(1);
	}
}