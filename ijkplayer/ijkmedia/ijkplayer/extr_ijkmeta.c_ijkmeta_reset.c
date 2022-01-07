
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dict; } ;
typedef TYPE_1__ IjkMediaMeta ;


 int av_dict_free (scalar_t__*) ;

void ijkmeta_reset(IjkMediaMeta *meta)
{
    if (meta && meta->dict)
        av_dict_free(&meta->dict);
}
