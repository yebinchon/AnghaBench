
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_6__ {size_t size; TYPE_2__* entries; } ;
struct TYPE_8__ {scalar_t__ largest_known_received; TYPE_1__ inflight; } ;
typedef TYPE_3__ h2o_qpack_encoder_t ;
struct TYPE_7__ {scalar_t__ stream_id; scalar_t__ largest_ref; } ;


 int H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED ;
 int evict_inflight_by_index (TYPE_3__*,size_t) ;

__attribute__((used)) static int handle_header_ack(h2o_qpack_encoder_t *qpack, int64_t stream_id, const char **err_desc)
{
    size_t i;

    for (i = 0; i < qpack->inflight.size; ++i)
        if (qpack->inflight.entries[i].stream_id == stream_id)
            goto Found;

    *err_desc = "Header Acknowledgement: invalid stream id";
    return H2O_HTTP3_ERROR_QPACK_DECOMPRESSION_FAILED;

Found:

    if (qpack->largest_known_received < qpack->inflight.entries[i].largest_ref)
        qpack->largest_known_received = qpack->inflight.entries[i].largest_ref;

    evict_inflight_by_index(qpack, i);

    return 0;
}
