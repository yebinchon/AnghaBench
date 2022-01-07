
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_12__ {TYPE_1__* prot; } ;
struct TYPE_11__ {TYPE_4__* inner; } ;
struct TYPE_10__ {TYPE_3__* priv_data; } ;
struct TYPE_9__ {scalar_t__ (* url_seek ) (TYPE_4__*,int,int ) ;} ;
typedef TYPE_2__ IjkURLContext ;
typedef TYPE_3__ IjkIOCacheContext ;


 int ENOSYS ;
 scalar_t__ IJKAVERROR (int ) ;
 int IJKAVSEEK_SIZE ;
 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ stub1 (TYPE_4__*,int,int ) ;
 scalar_t__ stub2 (TYPE_4__*,int,int ) ;
 scalar_t__ stub3 (TYPE_4__*,int,int ) ;
 scalar_t__ stub4 (TYPE_4__*,scalar_t__,int ) ;

__attribute__((used)) static int64_t ijkio_cache_ffurl_size(IjkURLContext *h) {
    int64_t pos, size;
    IjkIOCacheContext *c= ((IjkURLContext *)h)->priv_data;
    if (!c || !c->inner || !c->inner->prot)
        return IJKAVERROR(ENOSYS);
    size = c->inner->prot->url_seek(c->inner, 0, IJKAVSEEK_SIZE);
    if (size < 0) {
        pos = c->inner->prot->url_seek(c->inner, 0, SEEK_CUR);
        if ((size = c->inner->prot->url_seek(c->inner, -1, SEEK_END)) < 0)
            return size;
        size++;
        c->inner->prot->url_seek(c->inner, pos, SEEK_SET);
    }
    return size;
}
