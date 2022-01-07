
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int dict; } ;
typedef TYPE_1__ IjkMediaMeta ;
typedef TYPE_2__ AVDictionaryEntry ;


 int atoll (int ) ;
 TYPE_2__* av_dict_get (int ,char const*,int *,int ) ;

int64_t ijkmeta_get_int64_l(IjkMediaMeta *meta, const char *name, int64_t defaultValue)
{
    if (!meta || !meta->dict)
        return defaultValue;

    AVDictionaryEntry *entry = av_dict_get(meta->dict, name, ((void*)0), 0);
    if (!entry || !entry->value)
        return defaultValue;

    return atoll(entry->value);
}
