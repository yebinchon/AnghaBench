
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int state; TYPE_1__* ctx; } ;
typedef TYPE_2__ ptls_t ;
struct TYPE_4__ {int omit_end_of_early_data; } ;
 size_t SIZE_MAX ;
 int assert (int) ;

size_t ptls_get_read_epoch(ptls_t *tls)
{
    switch (tls->state) {
    case 136:
    case 137:
    case 138:
    case 132:
    case 129:
        return 0;
    case 131:
        assert(!tls->ctx->omit_end_of_early_data);
        return 1;
    case 140:
    case 142:
    case 143:
    case 141:
    case 139:
    case 134:
    case 133:
    case 130:
        return 2;
    case 135:
    case 128:
        return 3;
    default:
        assert(!"invalid state");
        return SIZE_MAX;
    }
}
