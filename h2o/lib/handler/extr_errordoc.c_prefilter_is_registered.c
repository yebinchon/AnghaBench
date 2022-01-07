
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* prefilters; } ;
typedef TYPE_1__ h2o_req_t ;
struct TYPE_5__ {scalar_t__ on_setup_ostream; struct TYPE_5__* next; } ;
typedef TYPE_2__ h2o_req_prefilter_t ;


 scalar_t__ on_prefilter_setup_stream ;

__attribute__((used)) static int prefilter_is_registered(h2o_req_t *req)
{
    h2o_req_prefilter_t *prefilter;
    for (prefilter = req->prefilters; prefilter != ((void*)0); prefilter = prefilter->next)
        if (prefilter->on_setup_ostream == on_prefilter_setup_stream)
            return 1;
    return 0;
}
