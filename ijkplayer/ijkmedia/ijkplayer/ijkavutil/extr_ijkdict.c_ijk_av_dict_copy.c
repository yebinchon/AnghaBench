
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; int key; } ;
typedef TYPE_1__ IjkAVDictionaryEntry ;
typedef int IjkAVDictionary ;


 int IJK_AV_DICT_IGNORE_SUFFIX ;
 TYPE_1__* ijk_av_dict_get (int const*,char*,TYPE_1__*,int ) ;
 int ijk_av_dict_set (int **,int ,int ,int) ;

int ijk_av_dict_copy(IjkAVDictionary **dst, const IjkAVDictionary *src, int flags)
{
    IjkAVDictionaryEntry *t = ((void*)0);

    while ((t = ijk_av_dict_get(src, "", t, IJK_AV_DICT_IGNORE_SUFFIX))) {
        int ret = ijk_av_dict_set(dst, t->key, t->value, flags);
        if (ret < 0)
            return ret;
    }

    return 0;
}
