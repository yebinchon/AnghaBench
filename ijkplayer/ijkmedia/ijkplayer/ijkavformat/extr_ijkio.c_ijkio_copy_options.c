
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; int key; } ;
typedef int IjkAVDictionary ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_DICT_IGNORE_SUFFIX ;
 TYPE_1__* av_dict_get (int *,char*,TYPE_1__*,int ) ;
 int ijk_av_dict_set (int **,int ,int ,int ) ;

__attribute__((used)) static int ijkio_copy_options(IjkAVDictionary **dst, AVDictionary *src) {
    AVDictionaryEntry *t = ((void*)0);

    while ((t = av_dict_get(src, "", t, AV_DICT_IGNORE_SUFFIX))) {
        int ret = ijk_av_dict_set(dst, t->key, t->value, 0);
        if (ret < 0)
            return ret;
    }

    return 0;
}
