
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lanai_dev {int conf2; TYPE_1__* cbrvcc; } ;
struct TYPE_2__ {int vci; int qos; } ;


 int CBR_ICG_Reg ;
 int CBR_PTR_Reg ;
 int CONFIG2_CBR_ENABLE ;
 int conf2_write (struct lanai_dev*) ;
 int pcr_to_cbricg (int *) ;
 int reg_write (struct lanai_dev*,int ,int ) ;

__attribute__((used)) static inline void lanai_cbr_setup(struct lanai_dev *lanai)
{
 reg_write(lanai, pcr_to_cbricg(&lanai->cbrvcc->qos), CBR_ICG_Reg);
 reg_write(lanai, lanai->cbrvcc->vci, CBR_PTR_Reg);
 lanai->conf2 |= CONFIG2_CBR_ENABLE;
 conf2_write(lanai);
}
