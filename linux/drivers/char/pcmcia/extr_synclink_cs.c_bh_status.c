
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cts_chkcount; scalar_t__ dcd_chkcount; scalar_t__ dsr_chkcount; scalar_t__ ri_chkcount; } ;
typedef TYPE_1__ MGSLPC_INFO ;



__attribute__((used)) static void bh_status(MGSLPC_INFO *info)
{
 info->ri_chkcount = 0;
 info->dsr_chkcount = 0;
 info->dcd_chkcount = 0;
 info->cts_chkcount = 0;
}
