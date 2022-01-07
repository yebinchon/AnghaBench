
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpic_civr; } ;


 TYPE_1__* cpic_reg ;
 int cpm_pic_host ;
 int in_be16 (int *) ;
 int irq_linear_revmap (int ,int) ;
 int out_be16 (int *,int) ;

int cpm_get_irq(void)
{
 int cpm_vec;





 out_be16(&cpic_reg->cpic_civr, 1);
 cpm_vec = in_be16(&cpic_reg->cpic_civr);
 cpm_vec >>= 11;

 return irq_linear_revmap(cpm_pic_host, cpm_vec);
}
