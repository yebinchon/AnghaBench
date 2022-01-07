
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * meta; } ;
typedef int IjkMediaMeta ;
typedef TYPE_1__ FFPlayer ;



IjkMediaMeta *ffp_get_meta_l(FFPlayer *ffp)
{
    if (!ffp)
        return ((void*)0);

    return ffp->meta;
}
