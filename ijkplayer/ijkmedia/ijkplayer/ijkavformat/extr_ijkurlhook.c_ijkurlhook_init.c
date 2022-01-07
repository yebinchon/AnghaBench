
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* priv_data; } ;
typedef TYPE_2__ URLContext ;
struct TYPE_5__ {int size; int url; scalar_t__ retry_counter; int segment_index; } ;
struct TYPE_7__ {char* scheme; int inner_flags; char* inner_scheme; TYPE_1__ app_io_ctrl; int segment_index; int inner_options; int app_ctx_intptr; } ;
typedef TYPE_3__ Context ;
typedef int AVDictionary ;


 int av_dict_copy (int *,int *,int ) ;
 int av_dict_set_int (int *,char*,int ,int ) ;
 scalar_t__ av_strstart (char const*,char*,char const**) ;
 int snprintf (int ,int,char*,char const*,...) ;

__attribute__((used)) static int ijkurlhook_init(URLContext *h, const char *arg, int flags, AVDictionary **options)
{
    Context *c = h->priv_data;
    int ret = 0;

    av_strstart(arg, c->scheme, &arg);

    c->inner_flags = flags;

    if (options)
        av_dict_copy(&c->inner_options, *options, 0);

    av_dict_set_int(&c->inner_options, "ijkapplication", c->app_ctx_intptr, 0);
    av_dict_set_int(&c->inner_options, "ijkinject-segment-index", c->segment_index, 0);

    c->app_io_ctrl.size = sizeof(c->app_io_ctrl);
    c->app_io_ctrl.segment_index = c->segment_index;
    c->app_io_ctrl.retry_counter = 0;

    if (av_strstart(arg, c->inner_scheme, ((void*)0))) {
        snprintf(c->app_io_ctrl.url, sizeof(c->app_io_ctrl.url), "%s", arg);
    } else {
        snprintf(c->app_io_ctrl.url, sizeof(c->app_io_ctrl.url), "%s%s", c->inner_scheme, arg);
    }

    return ret;
}
