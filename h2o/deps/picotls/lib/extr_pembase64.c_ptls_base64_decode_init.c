
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nbo; int status; scalar_t__ v; scalar_t__ nbc; } ;
typedef TYPE_1__ ptls_base64_decode_state_t ;


 int PTLS_BASE64_DECODE_IN_PROGRESS ;

void ptls_base64_decode_init(ptls_base64_decode_state_t *state)
{
    state->nbc = 0;
    state->nbo = 3;
    state->v = 0;
    state->status = PTLS_BASE64_DECODE_IN_PROGRESS;
}
