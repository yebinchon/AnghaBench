
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_7__ {scalar_t__ logical_pos; scalar_t__ logical_size; int io_error; } ;
struct TYPE_6__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ IjkURLContext ;
typedef TYPE_2__ Context ;


 int EINVAL ;
 scalar_t__ IJKAVERROR (int ) ;
 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 int ijkio_httphook_reconnect_at (TYPE_1__*,scalar_t__) ;
 scalar_t__ ijkio_urlhook_seek (TYPE_1__*,scalar_t__,int) ;

__attribute__((used)) static int64_t ijkio_httphook_reseek_at(IjkURLContext *h, int64_t pos, int whence, int force_reconnect)
{
    Context *c = h->priv_data;
    int ret = 0;

    if (!force_reconnect)
        return ijkio_urlhook_seek(h, pos, whence);

    if (whence == SEEK_CUR)
        pos += c->logical_pos;
    else if (whence == SEEK_END)
        pos += c->logical_size;
    else if (whence != SEEK_SET)
        return IJKAVERROR(EINVAL);
    if (pos < 0)
        return IJKAVERROR(EINVAL);

    ret = ijkio_httphook_reconnect_at(h, pos);
    if (ret) {
        c->io_error = ret;
        return ret;
    }

    c->io_error = 0;
    return c->logical_pos;
}
