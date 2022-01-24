#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  secret_server ;
typedef  int /*<<< orphan*/  secret_client ;
typedef  int /*<<< orphan*/  ptls_t ;
struct TYPE_7__ {TYPE_2__* hash; TYPE_1__* aead; } ;
typedef  TYPE_3__ ptls_cipher_suite_t ;
struct TYPE_6__ {scalar_t__ digest_size; } ;
struct TYPE_5__ {char* name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,TYPE_3__**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char*,char*) ; 

int FUNC4(ptls_t *tls_client, ptls_t *tls_server)
{
    int ret = 0;
    ptls_cipher_suite_t * cipher_client;
    ptls_cipher_suite_t * cipher_server;
    uint8_t secret_client[64];
    uint8_t secret_server[64];
    char const * label = "This is just a test";

    ret = FUNC0(tls_client, label, &cipher_client, 
        secret_client, sizeof(secret_client));

    if (ret != 0)
    {
        FUNC1(stderr, "Cannot extract client 1RTT secret, ret=%d\n", ret);
    }
    else
    {
        ret = FUNC0(tls_server, label, &cipher_server,
            secret_server, sizeof(secret_server));
        if (ret != 0)
        {
            FUNC1(stderr, "Cannot extract client 1RTT secret, ret=%d\n", ret);
        }
    }

    if (ret == 0)
    {
        if (FUNC3(cipher_client->aead->name, cipher_server->aead->name) != 0)
        {
            FUNC1(stderr, "AEAD differ, client:%s, server:%s\n",
                cipher_client->aead->name, cipher_server->aead->name);
            ret = -1;
        }
        else if (cipher_client->hash->digest_size != cipher_server->hash->digest_size)
        {
            FUNC1(stderr, "Key length differ, client:%d, server:%d\n",
                (int) cipher_client->hash->digest_size, (int) cipher_server->hash->digest_size);
            ret = -1;
        }
        else if (FUNC2(secret_client, secret_server, cipher_client->hash->digest_size) != 0)
        {
            FUNC1(stderr, "Key of client and server differ!\n");
            ret = -1;
        }
    }

    return ret;
}