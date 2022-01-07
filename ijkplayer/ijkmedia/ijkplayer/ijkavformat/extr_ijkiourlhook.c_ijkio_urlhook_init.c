
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int url; scalar_t__ retry_counter; int segment_index; } ;
struct TYPE_7__ {int inner_flags; TYPE_1__ app_io_ctrl; int segment_index; int inner_options; int app_ctx_intptr; } ;
struct TYPE_6__ {TYPE_3__* priv_data; } ;
typedef TYPE_2__ IjkURLContext ;
typedef int IjkAVDictionary ;
typedef TYPE_3__ Context ;


 int ijk_av_dict_copy (int *,int *,int ) ;
 int ijk_av_dict_set_int (int *,char*,int ,int ) ;
 int snprintf (int ,int,char*,char const*) ;

__attribute__((used)) static int ijkio_urlhook_init(IjkURLContext *h, const char *arg, int flags, IjkAVDictionary **options)
{
    Context *c = h->priv_data;
    int ret = 0;



    c->inner_flags = flags;

    if (options)
        ijk_av_dict_copy(&c->inner_options, *options, 0);

    ijk_av_dict_set_int(&c->inner_options, "ijkapplication", c->app_ctx_intptr, 0);
    ijk_av_dict_set_int(&c->inner_options, "ijkinject-segment-index", c->segment_index, 0);

    c->app_io_ctrl.size = sizeof(c->app_io_ctrl);
    c->app_io_ctrl.segment_index = c->segment_index;
    c->app_io_ctrl.retry_counter = 0;

    snprintf(c->app_io_ctrl.url, sizeof(c->app_io_ctrl.url), "%s", arg);

    return ret;
}
