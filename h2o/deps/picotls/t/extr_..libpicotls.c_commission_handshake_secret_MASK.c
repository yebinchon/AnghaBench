#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  secret; } ;
struct TYPE_8__ {TYPE_1__ dec; TYPE_1__ enc; } ;
struct TYPE_9__ {int /*<<< orphan*/ * pending_handshake_secret; TYPE_2__ traffic_protection; } ;
typedef  TYPE_3__ ptls_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTLS_MAX_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC6(ptls_t *tls)
{
    int is_enc = !FUNC4(tls);

    FUNC0(tls->pending_handshake_secret != NULL);
    FUNC2((is_enc ? &tls->traffic_protection.enc : &tls->traffic_protection.dec)->secret, tls->pending_handshake_secret,
           PTLS_MAX_DIGEST_SIZE);
    FUNC3(tls->pending_handshake_secret, PTLS_MAX_DIGEST_SIZE);
    FUNC1(tls->pending_handshake_secret);
    tls->pending_handshake_secret = NULL;

    return FUNC5(tls, is_enc, NULL, 2, 1);
}