#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  quicly_generate_resumption_token_t ;
typedef  int /*<<< orphan*/  quicly_conn_t ;
typedef  int /*<<< orphan*/  quicly_address_token_plaintext_t ;
struct TYPE_5__ {scalar_t__ off; int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ ptls_buffer_t ;
typedef  int /*<<< orphan*/  ptls_aead_context_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  ptls_openssl_random_bytes ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(quicly_generate_resumption_token_t *self, quicly_conn_t *conn, ptls_buffer_t *buf,
                                     quicly_address_token_plaintext_t *token)
{
    uint8_t prefix;
    ptls_aead_context_t *aead = FUNC1(&prefix);
    int ret;

    if ((ret = FUNC0(buf, 1)) != 0)
        return ret;
    buf->base[buf->off++] = prefix;
    return FUNC2(ptls_openssl_random_bytes, aead, buf, buf->off - 1, token);
}