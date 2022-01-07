
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IjkMediaMeta ;


 int ijkmeta_destroy (int *) ;

void ijkmeta_destroy_p(IjkMediaMeta **meta)
{
    if (!meta)
        return;

    ijkmeta_destroy(*meta);
    *meta = ((void*)0);
}
