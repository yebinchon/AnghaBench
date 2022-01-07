
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; int key; } ;
typedef TYPE_1__ IjkAVDictionaryEntry ;
typedef int IjkAVDictionary ;
typedef int AVDictionary ;


 int IJK_AV_DICT_IGNORE_SUFFIX ;
 int av_dict_set (int **,int ,int ,int ) ;
 TYPE_1__* ijk_av_dict_get (int *,char*,TYPE_1__*,int ) ;

__attribute__((used)) static int ijkio_copy_options(AVDictionary **dst, IjkAVDictionary *src) {
    IjkAVDictionaryEntry *t = ((void*)0);

    while ((t = ijk_av_dict_get(src, "", t, IJK_AV_DICT_IGNORE_SUFFIX))) {
        int ret = av_dict_set(dst, t->key, t->value, 0);
        if (ret < 0)
            return ret;
    }

    return 0;
}
