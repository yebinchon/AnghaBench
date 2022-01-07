
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {size_t dst; } ;
typedef TYPE_3__ quicly_send_context_t ;
struct TYPE_10__ {size_t frame_type; size_t error_code; int * reason_phrase; } ;
struct TYPE_11__ {TYPE_1__ connection_close; } ;
struct TYPE_13__ {TYPE_2__ egress; } ;
typedef TYPE_4__ quicly_conn_t ;


 int APPLICATION_CLOSE_SEND ;
 int QUICLY_FRAME_TYPE_APPLICATION_CLOSE ;
 int QUICLY_FRAME_TYPE_TRANSPORT_CLOSE ;
 int QUICLY_PROBE (int ,TYPE_4__*,int ,size_t,size_t,...) ;
 int TRANSPORT_CLOSE_SEND ;
 size_t UINT64_MAX ;
 int allocate_frame (TYPE_4__*,TYPE_3__*,int) ;
 int memcpy (size_t,int *,size_t) ;
 int probe_now () ;
 int * quicly_encodev (int *,size_t) ;
 size_t strlen (int *) ;

__attribute__((used)) static int send_connection_close(quicly_conn_t *conn, quicly_send_context_t *s)
{
    uint8_t frame_header_buf[1 + 8 + 8 + 8], *p;
    size_t reason_phrase_len = strlen(conn->egress.connection_close.reason_phrase);
    int ret;


    p = frame_header_buf;
    *p++ = conn->egress.connection_close.frame_type != UINT64_MAX ? QUICLY_FRAME_TYPE_TRANSPORT_CLOSE
                                                                  : QUICLY_FRAME_TYPE_APPLICATION_CLOSE;
    p = quicly_encodev(p, conn->egress.connection_close.error_code);
    if (conn->egress.connection_close.frame_type != UINT64_MAX)
        p = quicly_encodev(p, conn->egress.connection_close.frame_type);
    p = quicly_encodev(p, reason_phrase_len);


    if ((ret = allocate_frame(conn, s, p - frame_header_buf + reason_phrase_len)) != 0)
        return ret;
    memcpy(s->dst, frame_header_buf, p - frame_header_buf);
    s->dst += p - frame_header_buf;
    memcpy(s->dst, conn->egress.connection_close.reason_phrase, reason_phrase_len);
    s->dst += reason_phrase_len;

    if (conn->egress.connection_close.frame_type != UINT64_MAX) {
        QUICLY_PROBE(TRANSPORT_CLOSE_SEND, conn, probe_now(), conn->egress.connection_close.error_code,
                     conn->egress.connection_close.frame_type, conn->egress.connection_close.reason_phrase);
    } else {
        QUICLY_PROBE(APPLICATION_CLOSE_SEND, conn, probe_now(), conn->egress.connection_close.error_code,
                     conn->egress.connection_close.reason_phrase);
    }
    return 0;
}
