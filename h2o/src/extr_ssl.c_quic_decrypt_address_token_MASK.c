#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dec; } ;
struct st_quic_keyset_t {TYPE_1__ address_token; } ;
typedef  int /*<<< orphan*/  quicly_address_token_plaintext_t ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * base; } ;
typedef  TYPE_2__ ptls_iovec_t ;

/* Variables and functions */
 int PTLS_ERROR_INCOMPATIBLE_KEY ; 
 struct st_quic_keyset_t* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(quicly_address_token_plaintext_t *pt, ptls_iovec_t input)
{
    struct st_quic_keyset_t *keyset;

    FUNC2();

    if ((keyset = FUNC0(input.base[0])) == NULL)
        return PTLS_ERROR_INCOMPATIBLE_KEY; /* TODO consider error code */
    return FUNC1(keyset->address_token.dec, pt, input.base, input.len, 1);
}