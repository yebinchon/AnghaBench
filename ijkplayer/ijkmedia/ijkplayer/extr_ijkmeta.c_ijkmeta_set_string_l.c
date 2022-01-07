
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dict; } ;
typedef TYPE_1__ IjkMediaMeta ;


 int av_dict_set (int *,char const*,char const*,int ) ;

void ijkmeta_set_string_l(IjkMediaMeta *meta, const char *name, const char *value)
{
    if (!meta)
        return;

    av_dict_set(&meta->dict, name, value, 0);
}
