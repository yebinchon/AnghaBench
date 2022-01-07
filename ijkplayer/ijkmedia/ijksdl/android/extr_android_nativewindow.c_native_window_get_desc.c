
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fcc_or_hal; } ;
typedef TYPE_1__ AndroidHalFourccDescriptor ;


 int NELEM (TYPE_1__*) ;
 TYPE_1__* g_hal_fcc_map ;

AndroidHalFourccDescriptor *native_window_get_desc(int fourcc_or_hal)
{
    for (int i = 0; i < NELEM(g_hal_fcc_map); ++i) {
        AndroidHalFourccDescriptor *desc = &g_hal_fcc_map[i];
        if (desc->fcc_or_hal == fourcc_or_hal)
            return desc;
    }

    return ((void*)0);
}
