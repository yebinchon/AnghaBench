
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int ptls_buffer_t ;
struct TYPE_3__ {scalar_t__ status; int nbc; int nbo; int v; } ;
typedef TYPE_1__ ptls_base64_decode_state_t ;


 scalar_t__ PTLS_BASE64_DECODE_DONE ;
 void* PTLS_BASE64_DECODE_FAILED ;
 scalar_t__ PTLS_BASE64_DECODE_IN_PROGRESS ;
 int PTLS_ERROR_INCORRECT_BASE64 ;
 int* ptls_base64_values ;
 int ptls_buffer__do_pushv (int *,scalar_t__*,int) ;

int ptls_base64_decode(const char *text, ptls_base64_decode_state_t *state, ptls_buffer_t *buf)
{
    int ret = 0;
    uint8_t decoded[3];
    size_t text_index = 0;
    int c;
    signed char vc;


    while (text[text_index] != 0) {
        c = text[text_index];

        if (c == ' ' || c == '\t' || c == '\r' || c == '\n') {
            text_index++;
        } else {
            break;
        }
    }

    while (text[text_index] != 0 && ret == 0 && state->status == PTLS_BASE64_DECODE_IN_PROGRESS) {
        c = text[text_index++];

        vc = 0 < c && c < 0x7f ? ptls_base64_values[c] : -1;
        if (vc == -1) {
            if (state->nbc == 2 && c == '=' && text[text_index] == '=') {
                state->nbc = 4;
                text_index++;
                state->nbo = 1;
                state->v <<= 12;
            } else if (state->nbc == 3 && c == '=') {
                state->nbc = 4;
                state->nbo = 2;
                state->v <<= 6;
            } else {

                for (--text_index; text[text_index] != 0; ++text_index) {
                    c = text[text_index];
                    if (!(c == ' ' || c == '\t' || c == '\r' || c == '\n' || c == 0x0B || c == 0x0C))
                        break;
                }


                if (text[text_index] == 0) {
                    break;
                } else {

                    state->nbo = 0;
                    state->status = PTLS_BASE64_DECODE_FAILED;
                    ret = PTLS_ERROR_INCORRECT_BASE64;
                }
            }
        } else {
            state->nbc++;
            state->v <<= 6;
            state->v |= vc;
        }

        if (ret == 0 && state->nbc == 4) {

            for (int j = 0; j < state->nbo; j++) {
                decoded[j] = (uint8_t)(state->v >> (8 * (2 - j)));
            }

            ret = ptls_buffer__do_pushv(buf, decoded, state->nbo);

            if (ret == 0) {

                if (state->nbo < 3) {

                    while (text[text_index] != 0) {
                        c = text[text_index++];

                        if (c == ' ' || c == '\t' || c == '\r' || c == '\n' || c == 0x0B || c == 0x0C) {
                            continue;
                        }
                    }
                    if (text[text_index] == 0) {
                        state->status = PTLS_BASE64_DECODE_DONE;
                    } else {
                        state->status = PTLS_BASE64_DECODE_FAILED;
                        ret = PTLS_ERROR_INCORRECT_BASE64;
                    }
                    break;
                } else {
                    state->v = 0;
                    state->nbo = 3;
                    state->nbc = 0;
                }
            }
        }
    }
    return ret;
}
