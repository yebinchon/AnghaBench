
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ovfl_trash; int vci_trash; int hec_err; int atm_ovfl; } ;
struct lanai_dev {TYPE_1__ stats; } ;


 scalar_t__ STATS_GET_BAD_VCI (int ) ;
 scalar_t__ STATS_GET_BUF_OVFL (int ) ;
 scalar_t__ STATS_GET_FIFO_OVFL (int ) ;
 scalar_t__ STATS_GET_HEC_ERR (int ) ;
 int Statistics_Reg ;
 int reg_read (struct lanai_dev*,int ) ;

__attribute__((used)) static void get_statistics(struct lanai_dev *lanai)
{
 u32 statreg = reg_read(lanai, Statistics_Reg);
 lanai->stats.atm_ovfl += STATS_GET_FIFO_OVFL(statreg);
 lanai->stats.hec_err += STATS_GET_HEC_ERR(statreg);
 lanai->stats.vci_trash += STATS_GET_BAD_VCI(statreg);
 lanai->stats.ovfl_trash += STATS_GET_BUF_OVFL(statreg);
}
