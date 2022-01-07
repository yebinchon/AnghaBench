
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* IFX_MPS_CHIPID ;
 int ifx_danube_pre_1_4 ;
 int printk (char*) ;

void chip_version(void)
{


    int chip_id = 0;
    chip_id = *IFX_MPS_CHIPID;
    chip_id >>= 28;

    if (chip_id >= 4) {
        ifx_danube_pre_1_4 = 0;
        printk("Danube Chip ver. 1.4 detected. \n");
    }
    else {
        ifx_danube_pre_1_4 = 1;
        printk("Danube Chip ver. 1.3 or below detected. \n");
    }

    return;
}
