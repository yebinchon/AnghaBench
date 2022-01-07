
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char const* value; } ;
struct TYPE_5__ {int dict; } ;
typedef TYPE_1__ IjkMediaMeta ;
typedef TYPE_2__ AVDictionaryEntry ;


 TYPE_2__* av_dict_get (int ,char const*,int *,int ) ;

const char *ijkmeta_get_string_l(IjkMediaMeta *meta, const char *name)
{
    if (!meta || !meta->dict || !name)
        return ((void*)0);

    AVDictionaryEntry *entry = av_dict_get(meta->dict, name, ((void*)0), 0);
    if (!entry)
        return ((void*)0);

    return entry->value;
}
