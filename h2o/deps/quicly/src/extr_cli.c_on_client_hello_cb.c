
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ptls_t ;
typedef int ptls_on_client_hello_t ;
struct TYPE_6__ {size_t count; TYPE_3__* list; } ;
struct TYPE_7__ {TYPE_1__ negotiated_protocols; } ;
typedef TYPE_2__ ptls_on_client_hello_parameters_t ;
struct TYPE_8__ {scalar_t__ len; scalar_t__ base; } ;
typedef TYPE_3__ ptls_iovec_t ;
struct TYPE_9__ {size_t count; TYPE_3__* list; } ;


 int PTLS_ALERT_NO_APPLICATION_PROTOCOL ;
 scalar_t__ memcmp (scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_5__ negotiated_protocols ;
 int ptls_set_negotiated_protocol (int *,char const*,scalar_t__) ;

__attribute__((used)) static int on_client_hello_cb(ptls_on_client_hello_t *_self, ptls_t *tls, ptls_on_client_hello_parameters_t *params)
{
    int ret;

    if (negotiated_protocols.count != 0) {
        size_t i, j;
        const ptls_iovec_t *x, *y;
        for (i = 0; i != negotiated_protocols.count; ++i) {
            x = negotiated_protocols.list + i;
            for (j = 0; j != params->negotiated_protocols.count; ++j) {
                y = params->negotiated_protocols.list + j;
                if (x->len == y->len && memcmp(x->base, y->base, x->len) == 0)
                    goto ALPN_Found;
            }
        }
        return PTLS_ALERT_NO_APPLICATION_PROTOCOL;
    ALPN_Found:
        if ((ret = ptls_set_negotiated_protocol(tls, (const char *)x->base, x->len)) != 0)
            return ret;
    }

    return 0;
}
