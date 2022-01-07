
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* ctx; } ;
typedef TYPE_2__ ptls_t ;
struct TYPE_11__ {int len; int base; } ;
typedef TYPE_3__ ptls_iovec_t ;
struct TYPE_12__ {int (* cb ) (TYPE_4__*,TYPE_2__*,char const*,char*,int ) ;} ;
struct TYPE_9__ {TYPE_4__* log_event; } ;


 int NEW_SECRET ;
 int PTLS_MAX_DIGEST_SIZE ;
 int PTLS_PROBE (int ,TYPE_2__*,char const*,int ) ;
 int ptls_hexdump (char*,int ,int ) ;
 int stub1 (TYPE_4__*,TYPE_2__*,char const*,char*,int ) ;

__attribute__((used)) static void log_secret(ptls_t *tls, const char *type, ptls_iovec_t secret)
{
    char hexbuf[PTLS_MAX_DIGEST_SIZE * 2 + 1];

    PTLS_PROBE(NEW_SECRET, tls, type, ptls_hexdump(hexbuf, secret.base, secret.len));

    if (tls->ctx->log_event != ((void*)0))
        tls->ctx->log_event->cb(tls->ctx->log_event, tls, type, "%s", ptls_hexdump(hexbuf, secret.base, secret.len));
}
