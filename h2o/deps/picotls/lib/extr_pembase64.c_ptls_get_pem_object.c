
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptls_buffer_t ;
struct TYPE_4__ {scalar_t__ status; scalar_t__ nbc; } ;
typedef TYPE_1__ ptls_base64_decode_state_t ;
typedef int FILE ;


 scalar_t__ PTLS_BASE64_DECODE_DONE ;
 scalar_t__ PTLS_BASE64_DECODE_IN_PROGRESS ;
 int PTLS_ERROR_INCORRECT_BASE64 ;
 int PTLS_ERROR_PEM_LABEL_NOT_FOUND ;
 scalar_t__ fgets (char*,int,int *) ;
 int ptls_base64_decode (char*,TYPE_1__*,int *) ;
 int ptls_base64_decode_init (TYPE_1__*) ;
 scalar_t__ ptls_compare_separator_line (char*,char*,char const*) ;

__attribute__((used)) static int ptls_get_pem_object(FILE *F, const char *label, ptls_buffer_t *buf)
{
    int ret = PTLS_ERROR_PEM_LABEL_NOT_FOUND;
    char line[256];
    ptls_base64_decode_state_t state;


    while (fgets(line, 256, F)) {
        if (ptls_compare_separator_line(line, "BEGIN", label) == 0) {
            ret = 0;
            ptls_base64_decode_init(&state);
            break;
        }
    }

    while (ret == 0 && fgets(line, 256, F)) {
        if (ptls_compare_separator_line(line, "END", label) == 0) {
            if (state.status == PTLS_BASE64_DECODE_DONE || (state.status == PTLS_BASE64_DECODE_IN_PROGRESS && state.nbc == 0)) {
                ret = 0;
            } else {
                ret = PTLS_ERROR_INCORRECT_BASE64;
            }
            break;
        } else {
            ret = ptls_base64_decode(line, &state, buf);
        }
    }

    return ret;
}
