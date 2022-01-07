
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int protocol_blacklist; int protocol_whitelist; int interrupt_callback; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int * url; int inner; } ;
typedef TYPE_2__ Context ;
typedef int AVDictionary ;


 int AVERROR_EXTERNAL ;
 int ffurl_open_whitelist (int *,int *,int,int *,int **,int ,int ,TYPE_1__*) ;

__attribute__((used)) static int ijklongurl_open(URLContext *h, const char *arg, int flags, AVDictionary **options)
{
    Context *c = h->priv_data;

    if (!c->url || !*c->url)
        return AVERROR_EXTERNAL;

    return ffurl_open_whitelist(&c->inner,
                                c->url,
                                flags,
                                &h->interrupt_callback,
                                options,
                                h->protocol_whitelist,
                                h->protocol_blacklist,
                                h);
}
