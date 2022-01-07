
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_17__ {struct st_quicly_pending_path_challenge_t* base; } ;
struct TYPE_15__ {int buf; } ;
struct TYPE_16__ {int tls; TYPE_11__ transport_params; } ;
struct TYPE_26__ {int blocked; int active; } ;
struct TYPE_14__ {TYPE_9__ _default_scheduler; } ;
struct TYPE_23__ {int bidi; int uni; } ;
struct TYPE_24__ {int control; TYPE_6__ blocked; } ;
struct TYPE_25__ {TYPE_7__ streams; } ;
struct TYPE_21__ {struct st_quicly_pending_path_challenge_t* head; } ;
struct TYPE_22__ {int sentmap; TYPE_4__ path_challenge; } ;
struct TYPE_19__ {int * bidi; int * uni; } ;
struct TYPE_18__ {int sender; } ;
struct TYPE_20__ {TYPE_2__ max_streams; TYPE_1__ max_data; } ;
struct st_quicly_pending_path_challenge_t {TYPE_13__ token; TYPE_12__ crypto; int application; int handshake; int initial; TYPE_10__ super; TYPE_8__ pending; int streams; TYPE_5__ egress; struct st_quicly_pending_path_challenge_t* next; TYPE_3__ ingress; } ;
typedef struct st_quicly_pending_path_challenge_t quicly_conn_t ;


 int FREE ;
 int QUICLY_PROBE (int ,struct st_quicly_pending_path_challenge_t*,int ) ;
 int assert (int) ;
 int destroy_all_streams (struct st_quicly_pending_path_challenge_t*,int ,int) ;
 int free (struct st_quicly_pending_path_challenge_t*) ;
 int free_application_space (int *) ;
 int free_handshake_space (int *) ;
 int kh_destroy (int ,int ) ;
 int probe_now () ;
 int ptls_buffer_dispose (int *) ;
 int ptls_free (int ) ;
 int quicly_linklist_is_linked (int *) ;
 int quicly_maxsender_dispose (int *) ;
 int quicly_sentmap_dispose (int *) ;
 int quicly_stream_t ;

void quicly_free(quicly_conn_t *conn)
{
    QUICLY_PROBE(FREE, conn, probe_now());

    destroy_all_streams(conn, 0, 1);

    quicly_maxsender_dispose(&conn->ingress.max_data.sender);
    if (conn->ingress.max_streams.uni != ((void*)0))
        quicly_maxsender_dispose(conn->ingress.max_streams.uni);
    if (conn->ingress.max_streams.bidi != ((void*)0))
        quicly_maxsender_dispose(conn->ingress.max_streams.bidi);
    while (conn->egress.path_challenge.head != ((void*)0)) {
        struct st_quicly_pending_path_challenge_t *pending = conn->egress.path_challenge.head;
        conn->egress.path_challenge.head = pending->next;
        free(pending);
    }
    quicly_sentmap_dispose(&conn->egress.sentmap);

    kh_destroy(quicly_stream_t, conn->streams);

    assert(!quicly_linklist_is_linked(&conn->pending.streams.blocked.uni));
    assert(!quicly_linklist_is_linked(&conn->pending.streams.blocked.bidi));
    assert(!quicly_linklist_is_linked(&conn->pending.streams.control));
    assert(!quicly_linklist_is_linked(&conn->super._default_scheduler.active));
    assert(!quicly_linklist_is_linked(&conn->super._default_scheduler.blocked));

    free_handshake_space(&conn->initial);
    free_handshake_space(&conn->handshake);
    free_application_space(&conn->application);

    ptls_buffer_dispose(&conn->crypto.transport_params.buf);
    ptls_free(conn->crypto.tls);

    free(conn->token.base);
    free(conn);
}
