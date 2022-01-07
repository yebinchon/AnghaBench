
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_7__ {char* scheme; char* inner_scheme; scalar_t__ app_ctx_intptr; int * app_ctx; } ;
typedef TYPE_2__ Context ;
typedef int AVDictionary ;
typedef int AVApplicationContext ;


 int ijkurlhook_init (TYPE_1__*,char const*,int,int **) ;
 int ijkurlhook_reconnect (TYPE_1__*,int *) ;

__attribute__((used)) static int ijktcphook_open(URLContext *h, const char *arg, int flags, AVDictionary **options)
{
    Context *c = h->priv_data;
    int ret = 0;

    c->app_ctx = (AVApplicationContext *)(intptr_t)c->app_ctx_intptr;
    c->scheme = "ijktcphook:";
    c->inner_scheme = "tcp:";
    ret = ijkurlhook_init(h, arg, flags, options);
    if (ret)
        goto fail;

    ret = ijkurlhook_reconnect(h, ((void*)0));
    if (ret)
        goto fail;

fail:
    return ret;
}
