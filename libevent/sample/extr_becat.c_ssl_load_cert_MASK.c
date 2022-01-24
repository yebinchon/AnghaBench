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
struct ssl_context {int /*<<< orphan*/  pkey; int /*<<< orphan*/  cert; } ;
typedef  int /*<<< orphan*/  X509_NAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MBSTRING_ASC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,unsigned char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct ssl_context *ssl)
{
	X509_NAME *name;

	ssl->cert = FUNC8();

	FUNC0(FUNC5(ssl->cert), 1);

	FUNC7(FUNC4(ssl->cert), 0);
	/** 1 year lifetime */
	FUNC7(FUNC3(ssl->cert),
		(long)FUNC12(NULL) + 365 * 86400);

	FUNC10(ssl->cert, ssl->pkey);

	name = FUNC6(ssl->cert);
	FUNC2(
		name, "C", MBSTRING_ASC, (unsigned char *)"--", -1, -1, 0);
	FUNC2(
		name, "O", MBSTRING_ASC, (unsigned char *)"<NULL>", -1, -1, 0);
	FUNC2(
		name, "CN", MBSTRING_ASC, (unsigned char *)"*", -1, -1, 0);
	FUNC9(ssl->cert, name);

	FUNC11(ssl->cert, ssl->pkey, FUNC1());

	return 0;
}