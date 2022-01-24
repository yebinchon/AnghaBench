#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  sigbuf_small ;
struct TYPE_7__ {int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ ptls_openssl_sign_certificate_t ;
struct TYPE_8__ {void const* base; int /*<<< orphan*/  off; } ;
typedef  TYPE_2__ ptls_buffer_t ;
struct TYPE_9__ {scalar_t__ sign_certificate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_6__* ctx ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void)
{
    ptls_openssl_sign_certificate_t *sc = (ptls_openssl_sign_certificate_t *)ctx->sign_certificate;

    const void *message = "hello world";
    ptls_buffer_t sigbuf;
    uint8_t sigbuf_small[1024];

    FUNC5(&sigbuf, sigbuf_small, sizeof(sigbuf_small));
    FUNC3(FUNC2(sc->key, &sigbuf, FUNC6(message, FUNC7(message)), FUNC1()) == 0);
    FUNC0(sc->key);
    FUNC3(FUNC8(sc->key, FUNC6(message, FUNC7(message)), FUNC6(sigbuf.base, sigbuf.off)) == 0);

    FUNC4(&sigbuf);
}