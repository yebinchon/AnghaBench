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
struct ssl_context {int /*<<< orphan*/  ctx; } ;
typedef  int /*<<< orphan*/  SSL_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ssl_context*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct ssl_context*) ; 
 scalar_t__ FUNC5 (struct ssl_context*) ; 

__attribute__((used)) static int FUNC6(struct ssl_context *ssl)
{
	const SSL_METHOD *method;

	FUNC3();

	method = FUNC1();
	if (!method)
		goto err;
	ssl->ctx = FUNC0(method);

	if (FUNC5(ssl))
		goto err;
	if (FUNC4(ssl))
		goto err;

	return 0;

err:
	FUNC2(ssl);
	return 1;
}