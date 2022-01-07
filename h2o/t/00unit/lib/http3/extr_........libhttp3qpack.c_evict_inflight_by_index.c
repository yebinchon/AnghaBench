
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {size_t size; TYPE_4__* entries; } ;
struct TYPE_9__ {TYPE_3__ inflight; int num_blocked; } ;
typedef TYPE_2__ h2o_qpack_encoder_t ;
struct TYPE_8__ {scalar_t__ is_blocking; } ;
struct TYPE_11__ {TYPE_1__ encoder_flags; } ;


 int free (TYPE_4__*) ;
 int memmove (TYPE_4__*,TYPE_4__*,size_t) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void evict_inflight_by_index(h2o_qpack_encoder_t *qpack, size_t index)
{
    if (qpack->inflight.entries[index].encoder_flags.is_blocking)
        --qpack->num_blocked;
    --qpack->inflight.size;

    if (qpack->inflight.size == 0) {
        free(qpack->inflight.entries);
        memset(&qpack->inflight, 0, sizeof(qpack->inflight));
    } else if (index < qpack->inflight.size) {
        memmove(qpack->inflight.entries + index, qpack->inflight.entries + index + 1, qpack->inflight.size - index);
    }
}
