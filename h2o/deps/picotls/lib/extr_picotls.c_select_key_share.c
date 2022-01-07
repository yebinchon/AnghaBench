
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ id; } ;
typedef TYPE_1__ ptls_key_exchange_algorithm_t ;
typedef int ptls_iovec_t ;


 int PTLS_ALERT_ILLEGAL_PARAMETER ;
 int decode_key_share_entry (scalar_t__*,int *,int const**,int const* const) ;

__attribute__((used)) static int select_key_share(ptls_key_exchange_algorithm_t **selected, ptls_iovec_t *peer_key,
                            ptls_key_exchange_algorithm_t **candidates, const uint8_t **src, const uint8_t *const end,
                            int expect_one)
{
    int ret;

    *selected = ((void*)0);

    if (expect_one && *src == end) {
        ret = PTLS_ALERT_ILLEGAL_PARAMETER;
        goto Exit;
    }

    while (*src != end) {
        uint16_t group;
        ptls_iovec_t key;
        if ((ret = decode_key_share_entry(&group, &key, src, end)) != 0)
            goto Exit;
        ptls_key_exchange_algorithm_t **c = candidates;
        for (; *c != ((void*)0); ++c) {
            if (*selected == ((void*)0) && (*c)->id == group) {
                *selected = *c;
                *peer_key = key;
            }
        }
        if (expect_one) {
            ret = *selected != ((void*)0) ? 0 : PTLS_ALERT_ILLEGAL_PARAMETER;
            goto Exit;
        }
    }

    ret = 0;

Exit:
    return ret;
}
