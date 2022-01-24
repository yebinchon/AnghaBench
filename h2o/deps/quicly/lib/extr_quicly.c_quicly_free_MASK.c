#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;
typedef  struct TYPE_16__   TYPE_12__ ;
typedef  struct TYPE_15__   TYPE_11__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_17__ {struct st_quicly_pending_path_challenge_t* base; } ;
struct TYPE_15__ {int /*<<< orphan*/  buf; } ;
struct TYPE_16__ {int /*<<< orphan*/  tls; TYPE_11__ transport_params; } ;
struct TYPE_26__ {int /*<<< orphan*/  blocked; int /*<<< orphan*/  active; } ;
struct TYPE_14__ {TYPE_9__ _default_scheduler; } ;
struct TYPE_23__ {int /*<<< orphan*/  bidi; int /*<<< orphan*/  uni; } ;
struct TYPE_24__ {int /*<<< orphan*/  control; TYPE_6__ blocked; } ;
struct TYPE_25__ {TYPE_7__ streams; } ;
struct TYPE_21__ {struct st_quicly_pending_path_challenge_t* head; } ;
struct TYPE_22__ {int /*<<< orphan*/  sentmap; TYPE_4__ path_challenge; } ;
struct TYPE_19__ {int /*<<< orphan*/ * bidi; int /*<<< orphan*/ * uni; } ;
struct TYPE_18__ {int /*<<< orphan*/  sender; } ;
struct TYPE_20__ {TYPE_2__ max_streams; TYPE_1__ max_data; } ;
struct st_quicly_pending_path_challenge_t {TYPE_13__ token; TYPE_12__ crypto; int /*<<< orphan*/  application; int /*<<< orphan*/  handshake; int /*<<< orphan*/  initial; TYPE_10__ super; TYPE_8__ pending; int /*<<< orphan*/  streams; TYPE_5__ egress; struct st_quicly_pending_path_challenge_t* next; TYPE_3__ ingress; } ;
typedef  struct st_quicly_pending_path_challenge_t quicly_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct st_quicly_pending_path_challenge_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct st_quicly_pending_path_challenge_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct st_quicly_pending_path_challenge_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  quicly_stream_t ; 

void FUNC13(quicly_conn_t *conn)
{
    FUNC0(FREE, conn, FUNC7());

    FUNC2(conn, 0, 1);

    FUNC11(&conn->ingress.max_data.sender);
    if (conn->ingress.max_streams.uni != NULL)
        FUNC11(conn->ingress.max_streams.uni);
    if (conn->ingress.max_streams.bidi != NULL)
        FUNC11(conn->ingress.max_streams.bidi);
    while (conn->egress.path_challenge.head != NULL) {
        struct st_quicly_pending_path_challenge_t *pending = conn->egress.path_challenge.head;
        conn->egress.path_challenge.head = pending->next;
        FUNC3(pending);
    }
    FUNC12(&conn->egress.sentmap);

    FUNC6(quicly_stream_t, conn->streams);

    FUNC1(!FUNC10(&conn->pending.streams.blocked.uni));
    FUNC1(!FUNC10(&conn->pending.streams.blocked.bidi));
    FUNC1(!FUNC10(&conn->pending.streams.control));
    FUNC1(!FUNC10(&conn->super._default_scheduler.active));
    FUNC1(!FUNC10(&conn->super._default_scheduler.blocked));

    FUNC5(&conn->initial);
    FUNC5(&conn->handshake);
    FUNC4(&conn->application);

    FUNC8(&conn->crypto.transport_params.buf);
    FUNC9(conn->crypto.tls);

    FUNC3(conn->token.base);
    FUNC3(conn);
}