
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ max_acked; } ;
struct st_quicly_max_streams_t {scalar_t__ count; TYPE_1__ blocked_sender; } ;


 int QUICLY_TRANSPORT_ERROR_STREAM_LIMIT ;

__attribute__((used)) static int update_max_streams(struct st_quicly_max_streams_t *m, uint64_t count)
{
    if (count > (uint64_t)1 << 60)
        return QUICLY_TRANSPORT_ERROR_STREAM_LIMIT;

    if (m->count < count) {
        m->count = count;
        if (m->blocked_sender.max_acked < count)
            m->blocked_sender.max_acked = count;
    }

    return 0;
}
