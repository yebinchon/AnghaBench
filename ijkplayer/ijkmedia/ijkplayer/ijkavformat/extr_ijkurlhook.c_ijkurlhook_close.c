
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int inner; int inner_options; } ;
typedef TYPE_2__ Context ;


 int av_dict_free (int *) ;
 int ffurl_closep (int *) ;

__attribute__((used)) static int ijkurlhook_close(URLContext *h)
{
    Context *c = h->priv_data;

    av_dict_free(&c->inner_options);
    return ffurl_closep(&c->inner);
}
