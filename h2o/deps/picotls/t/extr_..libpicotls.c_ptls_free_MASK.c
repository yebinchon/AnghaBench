#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  verify_ctx; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_21__ {TYPE_9__* base; } ;
struct TYPE_22__ {TYPE_5__ context; } ;
struct TYPE_23__ {TYPE_6__ certificate_request; TYPE_10__* key_share_ctx; } ;
struct TYPE_19__ {int /*<<< orphan*/ * aead; } ;
struct TYPE_18__ {int /*<<< orphan*/ * aead; } ;
struct TYPE_20__ {TYPE_3__ enc; TYPE_2__ dec; } ;
struct TYPE_17__ {int /*<<< orphan*/  mess; int /*<<< orphan*/  rec; } ;
struct TYPE_25__ {int /*<<< orphan*/  ctx; struct TYPE_25__* pending_handshake_secret; TYPE_8__ certificate_verify; TYPE_7__ client; scalar_t__ is_server; struct TYPE_25__* negotiated_protocol; struct TYPE_25__* server_name; TYPE_4__ traffic_protection; int /*<<< orphan*/ * key_schedule; int /*<<< orphan*/ * esni; TYPE_1__ recvbuf; } ;
typedef  TYPE_9__ ptls_t ;
struct TYPE_16__ {int /*<<< orphan*/  (* on_exchange ) (TYPE_10__**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FREE ; 
 int PTLS_MAX_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_10__**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

void FUNC12(ptls_t *tls)
{
    FUNC0(FREE, tls);
    FUNC6(&tls->recvbuf.rec);
    FUNC6(&tls->recvbuf.mess);
    FUNC3(tls, 1);
    FUNC3(tls, 0);
    if (tls->esni != NULL)
        FUNC2(&tls->esni, tls->is_server);
    if (tls->key_schedule != NULL)
        FUNC4(tls->key_schedule);
    if (tls->traffic_protection.dec.aead != NULL)
        FUNC5(tls->traffic_protection.dec.aead);
    if (tls->traffic_protection.enc.aead != NULL)
        FUNC5(tls->traffic_protection.enc.aead);
    FUNC1(tls->server_name);
    FUNC1(tls->negotiated_protocol);
    if (tls->is_server) {
        /* nothing to do */
    } else {
        if (tls->client.key_share_ctx != NULL)
            tls->client.key_share_ctx->on_exchange(&tls->client.key_share_ctx, 1, NULL, FUNC8(NULL, 0));
        if (tls->client.certificate_request.context.base != NULL)
            FUNC1(tls->client.certificate_request.context.base);
    }
    if (tls->certificate_verify.cb != NULL) {
        tls->certificate_verify.cb(tls->certificate_verify.verify_ctx, FUNC8(NULL, 0), FUNC8(NULL, 0));
    }
    if (tls->pending_handshake_secret != NULL) {
        FUNC7(tls->pending_handshake_secret, PTLS_MAX_DIGEST_SIZE);
        FUNC1(tls->pending_handshake_secret);
    }
    FUNC11(tls->ctx, -1);
    FUNC7(tls, sizeof(*tls));
    FUNC1(tls);
}