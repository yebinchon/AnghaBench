
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int ptls_t ;
struct TYPE_6__ {scalar_t__ type; int data; } ;
typedef TYPE_1__ ptls_raw_extension_t ;
struct TYPE_7__ {scalar_t__ (* collect_extension ) (int *,TYPE_2__*,scalar_t__) ;} ;
typedef TYPE_2__ ptls_handshake_properties_t ;


 size_t MAX_UNKNOWN_EXTENSIONS ;
 int PTLS_ALERT_ILLEGAL_PARAMETER ;
 scalar_t__ UINT16_MAX ;
 int assert (int) ;
 int ptls_iovec_init (int const*,int) ;
 scalar_t__ stub1 (int *,TYPE_2__*,scalar_t__) ;

__attribute__((used)) static int handle_unknown_extension(ptls_t *tls, ptls_handshake_properties_t *properties, uint16_t type, const uint8_t *src,
                                    const uint8_t *const end, ptls_raw_extension_t *slots)
{
    if (properties != ((void*)0) && properties->collect_extension != ((void*)0) && properties->collect_extension(tls, properties, type)) {
        size_t i;
        for (i = 0; slots[i].type != UINT16_MAX; ++i) {
            assert(i < MAX_UNKNOWN_EXTENSIONS);
            if (slots[i].type == type)
                return PTLS_ALERT_ILLEGAL_PARAMETER;
        }
        if (i < MAX_UNKNOWN_EXTENSIONS) {
            slots[i].type = type;
            slots[i].data = ptls_iovec_init(src, end - src);
            slots[i + 1].type = UINT16_MAX;
        }
    }
    return 0;
}
