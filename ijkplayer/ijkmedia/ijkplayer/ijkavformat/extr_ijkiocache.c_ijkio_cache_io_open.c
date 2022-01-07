
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* prot; } ;
struct TYPE_12__ {int logical_size; TYPE_1__* tree_info; int cache_file_close; TYPE_5__* inner; } ;
struct TYPE_11__ {TYPE_4__* priv_data; } ;
struct TYPE_10__ {int (* url_open2 ) (TYPE_5__*,char const*,int,int **) ;} ;
struct TYPE_9__ {int file_size; } ;
typedef TYPE_3__ IjkURLContext ;
typedef TYPE_4__ IjkIOCacheContext ;
typedef int IjkAVDictionary ;


 int call_inject_statistic (TYPE_3__*) ;
 int ijkio_cache_ffurl_size (TYPE_3__*) ;
 int stub1 (TYPE_5__*,char const*,int,int **) ;

__attribute__((used)) static int ijkio_cache_io_open(IjkURLContext *h, const char *url, int flags, IjkAVDictionary **options) {
    int ret = 0;
    IjkIOCacheContext *c= h->priv_data;
    ret = c->inner->prot->url_open2(c->inner, url, flags, options);
    if (ret != 0) {
        return ret;
    } else {
        c->logical_size = ijkio_cache_ffurl_size(h);
        if (c->tree_info && !c->cache_file_close) {
            c->tree_info->file_size = c->logical_size;
        }
    }

    call_inject_statistic(h);
    return ret;
}
