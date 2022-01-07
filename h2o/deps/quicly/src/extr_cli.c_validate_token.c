
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef scalar_t__ uint64_t ;
struct sockaddr_in6 {int sin6_port; int sin6_addr; } ;
struct TYPE_15__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_2__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct TYPE_20__ {scalar_t__ cidpair_hash; } ;
struct TYPE_18__ {int sin6_port; int sin6_addr; } ;
struct TYPE_16__ {int s_addr; } ;
struct TYPE_17__ {int sin_port; TYPE_3__ sin_addr; } ;
struct TYPE_14__ {int sa_family; } ;
struct TYPE_19__ {TYPE_5__ sin6; TYPE_4__ sin; TYPE_1__ sa; } ;
struct TYPE_21__ {scalar_t__ issued_at; TYPE_7__ retry; scalar_t__ is_retry; TYPE_6__ remote; } ;
typedef TYPE_8__ quicly_address_token_plaintext_t ;
typedef int ptls_iovec_t ;
typedef scalar_t__ int64_t ;
struct TYPE_13__ {TYPE_10__* now; } ;
struct TYPE_12__ {scalar_t__ (* cb ) (TYPE_10__*) ;} ;




 TYPE_11__ ctx ;
 int memcmp (int *,int *,int) ;
 int ptls_openssl_sha256 ;
 scalar_t__ quicly_retry_calc_cidpair_hash (int *,int ,int ,scalar_t__*) ;
 scalar_t__ stub1 (TYPE_10__*) ;

__attribute__((used)) static int validate_token(struct sockaddr *remote, ptls_iovec_t client_cid, ptls_iovec_t server_cid,
                          quicly_address_token_plaintext_t *token)
{
    int64_t age;
    int port_is_equal;

    if ((age = ctx.now->cb(ctx.now) - token->issued_at) < 0)
        age = 0;
    if (remote->sa_family != token->remote.sa.sa_family)
        return 0;
    switch (remote->sa_family) {
    case 129: {
        struct sockaddr_in *sin = (struct sockaddr_in *)remote;
        if (sin->sin_addr.s_addr != token->remote.sin.sin_addr.s_addr)
            return 0;
        port_is_equal = sin->sin_port == token->remote.sin.sin_port;
    } break;
    case 128: {
        struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)remote;
        if (memcmp(&sin6->sin6_addr, &token->remote.sin6.sin6_addr, sizeof(sin6->sin6_addr)) != 0)
            return 0;
        port_is_equal = sin6->sin6_port == token->remote.sin6.sin6_port;
    } break;
    default:
        return 0;
    }
    if (token->is_retry) {
        if (age > 30000)
            return 0;
        if (!port_is_equal)
            return 0;
        uint64_t cidhash_actual;
        if (quicly_retry_calc_cidpair_hash(&ptls_openssl_sha256, client_cid, server_cid, &cidhash_actual) != 0)
            return 0;
        if (token->retry.cidpair_hash != cidhash_actual)
            return 0;
    } else {
        if (age > 10 * 60 * 1000)
            return 0;
    }
    return 1;
}
