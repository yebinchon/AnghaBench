
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int url; } ;
struct TYPE_14__ {struct TYPE_14__* priv_data; scalar_t__ io_error; struct TYPE_14__* inner; TYPE_2__* prot; int logical_size; int logical_pos; int inner_flags; TYPE_1__ app_io_ctrl; int ijkio_app_ctx; int * inner_options; scalar_t__ test_fail_point; int test_fail_point_next; } ;
struct TYPE_13__ {int (* url_open2 ) (TYPE_3__*,int ,int ,int **) ;int (* url_seek ) (TYPE_3__*,int ,int ) ;int (* url_close ) (TYPE_3__*) ;} ;
typedef TYPE_3__ IjkURLContext ;
typedef int IjkAVDictionary ;
typedef TYPE_3__ Context ;


 int IJKAVSEEK_SIZE ;
 int SEEK_CUR ;
 int assert (int *) ;
 int ijk_av_dict_copy (int **,int *,int ) ;
 int ijk_av_dict_free (int **) ;
 int ijk_av_freep (TYPE_3__**) ;
 int ijkio_alloc_url (TYPE_3__**,int ) ;
 int stub1 (TYPE_3__*,int ,int ,int **) ;
 int stub2 (TYPE_3__*) ;
 int stub3 (TYPE_3__*,int ,int ) ;
 int stub4 (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int ijkio_urlhook_reconnect(IjkURLContext *h, IjkAVDictionary *extra)
{
    Context *c = h->priv_data;
    int ret = 0;
    IjkURLContext *new_url = ((void*)0);
    IjkAVDictionary *inner_options = ((void*)0);

    c->test_fail_point_next += c->test_fail_point;

    assert(c->inner_options);
    ijk_av_dict_copy(&inner_options, c->inner_options, 0);
    if (extra)
        ijk_av_dict_copy(&inner_options, extra, 0);

    ret = ijkio_alloc_url(&new_url, c->app_io_ctrl.url);
    new_url->ijkio_app_ctx = c->ijkio_app_ctx;
    if (ret)
        goto fail0;

    ret = new_url->prot->url_open2(new_url, c->app_io_ctrl.url, c->inner_flags, &inner_options);
    if (ret)
        goto fail1;

    if (c->inner) {
        c->inner->prot->url_close(c->inner);
        ijk_av_freep(&c->inner->priv_data);
        ijk_av_freep(&c->inner);
    }

    c->inner = new_url;
    c->logical_pos = c->inner->prot->url_seek(c->inner, 0, SEEK_CUR);
    c->logical_size = c->inner->prot->url_seek(c->inner, 0, IJKAVSEEK_SIZE);
    c->io_error = 0;
    if (inner_options) {
        ijk_av_dict_free(&inner_options);
    }
    return ret;

fail1:
    ijk_av_freep(&new_url->priv_data);
    ijk_av_freep(&new_url);
fail0:
    if (inner_options) {
        ijk_av_dict_free(&inner_options);
    }
    return ret;
}
