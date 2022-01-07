
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ id; } ;
typedef TYPE_1__ ptls_cipher_suite_t ;


 int PTLS_ALERT_HANDSHAKE_FAILURE ;
 int ptls_decode16 (scalar_t__*,int const**,int const* const) ;

__attribute__((used)) static int select_cipher(ptls_cipher_suite_t **selected, ptls_cipher_suite_t **candidates, const uint8_t *src,
                         const uint8_t *const end)
{
    int ret;

    while (src != end) {
        uint16_t id;
        if ((ret = ptls_decode16(&id, &src, end)) != 0)
            goto Exit;
        ptls_cipher_suite_t **c = candidates;
        for (; *c != ((void*)0); ++c) {
            if ((*c)->id == id) {
                *selected = *c;
                return 0;
            }
        }
    }

    ret = PTLS_ALERT_HANDSHAKE_FAILURE;

Exit:
    return ret;
}
