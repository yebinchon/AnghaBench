
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atm_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int GET (int ) ;
 TYPE_1__* PRIV (struct atm_dev*) ;
 int PUT (int,int ) ;
 int REG_CHANGE (int ,int ,int ,int ) ;
 int RPOP_RC ;
 int SPTB_CTRL ;
 int SSTB_CTRL ;
 scalar_t__ SUNI_MRI_TYPE_PM5355 ;
 int SUNI_RPOP_RC_ENSS ;
 int SUNI_SPTB_CTRL_LEN16 ;
 int SUNI_SSTB_CTRL_LEN16 ;
 int SUNI_TPOP_APM_S ;
 int SUNI_TPOP_APM_S_SHIFT ;
 int SUNI_TPOP_S_SDH ;
 int TPOP_APM ;

__attribute__((used)) static int set_sdh(struct atm_dev *dev)
{
 if (PRIV(dev)->type == SUNI_MRI_TYPE_PM5355) {
  PUT(GET(RPOP_RC) | SUNI_RPOP_RC_ENSS, RPOP_RC);
  PUT(GET(SSTB_CTRL) | SUNI_SSTB_CTRL_LEN16, SSTB_CTRL);
  PUT(GET(SPTB_CTRL) | SUNI_SPTB_CTRL_LEN16, SPTB_CTRL);
 }

 REG_CHANGE(SUNI_TPOP_APM_S, SUNI_TPOP_APM_S_SHIFT,
     SUNI_TPOP_S_SDH, TPOP_APM);

 return 0;
}
