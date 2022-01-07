
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCF_SCM_BCR ;
 int MCF_SCM_BCR_GBR ;
 int MCF_SCM_BCR_GBW ;
 int MCF_SCM_MPR ;
 int MCF_SCM_PACRA ;
 int MCF_SCM_PACRB ;
 int MCF_SCM_PACRC ;
 int MCF_SCM_PACRD ;
 int MCF_SCM_PACRE ;
 int MCF_SCM_PACRF ;
 int writel (int,int ) ;

void scm_init(void)
{

 writel(0x77777777, MCF_SCM_MPR);



 writel(0, MCF_SCM_PACRA);
 writel(0, MCF_SCM_PACRB);
 writel(0, MCF_SCM_PACRC);
 writel(0, MCF_SCM_PACRD);
 writel(0, MCF_SCM_PACRE);
 writel(0, MCF_SCM_PACRF);


 writel(MCF_SCM_BCR_GBR | MCF_SCM_BCR_GBW, MCF_SCM_BCR);
}
