
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int priv_data_size; } ;
struct TYPE_7__ {void* priv_data; TYPE_2__* prot; } ;
typedef TYPE_1__ IjkURLContext ;


 void* calloc (int,int) ;
 TYPE_2__ ijkio_androidio_protocol ;
 TYPE_2__ ijkio_cache_protocol ;
 TYPE_2__ ijkio_ffio_protocol ;
 TYPE_2__ ijkio_httphook_protocol ;
 int strlen (char*) ;
 int strncmp (char const*,char*,int ) ;

int ijkio_alloc_url(IjkURLContext **ph, const char *url) {
    if (!ph) {
        return -1;
    }

    IjkURLContext *h = ((void*)0);
    if (!strncmp(url, "cache:", strlen("cache:"))) {
        h = (IjkURLContext *)calloc(1, sizeof(IjkURLContext));
        h->prot = &ijkio_cache_protocol;
        h->priv_data = calloc(1, ijkio_cache_protocol.priv_data_size);
    } else if (!strncmp(url, "ffio:", strlen("ffio:"))) {
        h = (IjkURLContext *)calloc(1, sizeof(IjkURLContext));
        h->prot = &ijkio_ffio_protocol;
        h->priv_data = calloc(1, ijkio_ffio_protocol.priv_data_size);
    } else if (!strncmp(url, "httphook:", strlen("httphook:"))) {
        h = (IjkURLContext *)calloc(1, sizeof(IjkURLContext));
        h->prot = &ijkio_httphook_protocol;
        h->priv_data = calloc(1, ijkio_httphook_protocol.priv_data_size);
    }







      else {
        return -1;
    }

    *ph = h;

    return 0;
}
