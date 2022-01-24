#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cipher_suites; int /*<<< orphan*/  key_exchanges; int /*<<< orphan*/ * get_time; int /*<<< orphan*/  random_bytes; } ;
typedef  TYPE_1__ ptls_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ptls_get_time ; 
 int FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  ptls_minicrypto_cipher_suites ; 
 int /*<<< orphan*/  ptls_minicrypto_key_exchanges ; 
 int FUNC3 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  ptls_minicrypto_random_bytes ; 
 int /*<<< orphan*/  stderr ; 

int FUNC4(ptls_context_t *ctx_server, char const * key_file, char const * cert_file)
{
	int ret = 0;

	/* Initialize the server context */
	FUNC1(ctx_server, 0, sizeof(ptls_context_t));
	ctx_server->random_bytes = ptls_minicrypto_random_bytes;
    ctx_server->get_time = &ptls_get_time;
	ctx_server->key_exchanges = ptls_minicrypto_key_exchanges;
	ctx_server->cipher_suites = ptls_minicrypto_cipher_suites;

	ret = FUNC2(ctx_server, cert_file);

	if (ret != 0)
	{
		FUNC0(stderr, "Could not read the server certificates\n");
	}
	else
	{
		ret = FUNC3(ctx_server, key_file);
	}

	return ret;
}