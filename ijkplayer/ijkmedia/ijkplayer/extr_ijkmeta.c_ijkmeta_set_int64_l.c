
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int dict; } ;
typedef TYPE_1__ IjkMediaMeta ;


 int av_dict_set_int (int *,char const*,int ,int ) ;

void ijkmeta_set_int64_l(IjkMediaMeta *meta, const char *name, int64_t value)
{
    if (!meta)
        return;

    av_dict_set_int(&meta->dict, name, value, 0);
}
